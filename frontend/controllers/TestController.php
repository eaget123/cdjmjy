<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/11/9
 * Time: 11:30
 */

namespace frontend\controllers;

use Yii;
use backend\models\IndexImg;
use backend\models\IndexText;
use backend\models\SchoolRank;
use backend\models\UserAction;
use backend\models\WxUser;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\Session;

class TestController extends Controller
{
    public $enableCsrfValidation = false;
    public function actionIndex(){
        $appid = "wx62b58fd5e1f122df";
        $redirect_uri = urlencode('http://www.sctanzi.com/chadmin-ok/frontend/web/index.php?r=test%2Fget-wx-user');
        return $this->redirect("https://open.weixin.qq.com/connect/oauth2/authorize?appid=$appid&redirect_uri=$redirect_uri&response_type=code&scope=snsapi_userinfo#wechat_redirect");
    }
    public function actionGetWxUser(){
        $appid = "wx62b58fd5e1f122df";
        $secret = "125d993cee5e458f4987759e7f90434d";
        $code = $_GET['code'];
        //获取access_token
        $content = file_get_contents("https://api.weixin.qq.com/sns/oauth2/access_token?appid=$appid&secret=$secret&code=$code&grant_type=authorization_code");
        $obj = json_decode($content);
        $refresh_token = $obj->refresh_token;
        //刷新access_token
        $res = file_get_contents("https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=$appid&grant_type=refresh_token&refresh_token=$refresh_token");
        $obj1 = json_decode($res);
        $access_token = $obj1->access_token;
        $openId = $obj1->openid;
        //存session
        $session = Yii::$app->session;
        $session->set('open_id', $openId);
        //拉取用户信息
//        $user = file_get_contents("https://api.weixin.qq.com/sns/userinfo?access_token=$access_token&openid=$openId&lang=zh_CN");

//        //获取公众号用户列表
        $res2 = file_get_contents("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$secret");
        $obj2 = json_decode($res2);
        $access_token2 = $obj2->access_token;
        $user = file_get_contents("https://api.weixin.qq.com/cgi-bin/user/info?access_token=$access_token2&openid=$openId&lang=zh_CN");
        $userObj = json_decode($user);
//        $user_list = file_get_contents("https://api.weixin.qq.com/cgi-bin/user/get?access_token=$access_token2");
//        $user_list_obj = json_decode($user_list);
//        $openid_arr = $user_list_obj->data->openid;
//        $next_openid = $user_list_obj->next_openid;
//        $flag = 0;
//        while($next_openid){
//            $flag++;
//            $user_list1 = file_get_contents("https://api.weixin.qq.com/cgi-bin/user/get?access_token=$access_token2&next_openid=$next_openid");
//            $user_list_obj1 = json_decode($user_list1);
//            $openid_arr1 = $user_list_obj1->data->openid;
//            $openid_arr = array_merge($openid_arr,$openid_arr1);
//            if($flag == 13){
//                var_dump($openid_arr);exit;
//            }
//            $next_openid = $user_list_obj1->next_openid;
//        }
        if($userObj->subscribe){
            $user = WxUser::find()->where(['open_id'=>$userObj->openid])->one();
            if(!$user){
                $model = new WxUser();
                $model->open_id = $userObj->openid;
                if($userObj->sex){
                    $model->sex = (string)$userObj->sex;
                }else{
                    $model->sex = "0";
                }
                $model->nike_name = $userObj->nickname;
                $model->head_img_url = urldecode($userObj->headimgurl);
                $model->update_date = date('Y-m-d H:i:s');
                $model->save();
            }
            return $this->redirect(Url::toRoute(['test/test','gz'=>1]));
        }else{
            return $this->redirect(Url::toRoute(['test/test','gz'=>0]));
//            $this->layout =false;
//            return $this->render('gz');
        }

    }
    public function actionTest(){
        $get = Yii::$app->request->get();
        $gz = $get['gz'];
        $session = Yii::$app->session;

        $open_id = $session->get('open_id');
        $this->layout =false;
        if($open_id){
            $img = IndexImg::find()->asArray()->one();
            $imgUrl = $img['img_url'];
            $text = IndexText::find()->orderBy("order")->asArray()->all();
            return $this->render('index',[
                'imgUrl'=>$imgUrl,
                'text'=>$text,
                'gz'=>$gz
            ]);
        }else{
            return $this->redirect(Url::toRoute('test/index'));
        }
    }
    public function actionPage2(){
        $session = Yii::$app->session;
        $open_id = $session->get('open_id');
        $this->layout =false;
        $total = 0;
        if($open_id){
            $school = SchoolRank::find()->orderBy("total desc")->asArray()->all();
            foreach ($school as $v){
                $total += $v['total'];
            }
            return $this->render('phb',[
                'school'=>$school,
                'total'=>$total,
            ]);
        }else{
            return $this->redirect(Url::toRoute('test/index'));
        }

    }
    public function actionPage3(){
        $session = Yii::$app->session;
        $open_id = $session->get('open_id');
        $this->layout =false;
        $get = Yii::$app->request->get();
        $total = 0;
//        $open_id = true;
        if($open_id){
            $school = SchoolRank::find()->orderBy("total desc")->asArray()->all();
            foreach ($school as $v){
                $total += $v['total'];
            }
            $school_id = $get['id'];
            return $this->render('run',[
                'total'=>$total,
                'school_id'=>$school_id,
                'open_id'=>$open_id,
            ]);
        }else{
            return $this->redirect(Url::toRoute('test/index'));
        }

    }
    public function actionPage4(){
        $post = Yii::$app->request->post();
        $school_id = $post['id'];
        $open_id = $post['open_id'];
//        $open_id = "oKGGRw9jlTqJU-v5FqW-dOB4cd90";
//        $school_id = 1;
        $walk = mt_rand(30,50);
        $total = 0;
        $school = SchoolRank::find()->orderBy("total desc")->asArray()->all();
        foreach ($school as $v){
            $total += $v['total'];
        }
        $sx = 400000 - $total;
        if($sx <= 50 && $sx >= 0){
            $walk = $sx;
        }
        $arr = array();
        if($walk != 0){
            $sql = "select * from user_action where open_id='$open_id' and date(update_date) = curdate()";
            $count = UserAction::findBySql($sql)->count();
            $res = UserAction::findBySql($sql)->asArray()->all();
            if($count == 3 || $count > 3){
                $arr['err'] = -1;

            }else{
                $userAction = new UserAction();
                $userAction->open_id = $open_id;
                $userAction->walk = $walk;
                $userAction->update_date = date('Y-m-d H:i:s');
                $userAction->save();
                $school_rank = SchoolRank::findOne(['id'=>$school_id]);
                $school_rank->total +=  $walk;
                $school_rank->save();
                if($count == 2){
                    $num = 0;
                    foreach($res as $v){
                        $num += $v['walk'];
                    }
                    $arr['err'] = -2;
                    $arr['msg'] = $walk;
                    $arr['total'] = $num+$walk;
                }else{
                    $arr['err'] = 0;
                    $arr['msg'] = $walk;
                }

            }


        }else{
           $arr['err'] = -3;
        }
        $json = json_encode($arr);
        return $json;


    }
    public function actionGz(){
        $session = Yii::$app->session;
        $session->remove('open_id');
        $this->layout =false;
        return $this->render('gz');
    }
}