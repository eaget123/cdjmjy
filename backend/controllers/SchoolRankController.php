<?php

namespace backend\controllers;

use Yii;
use yii\data\Pagination;
use backend\models\SchoolRank;
use backend\models\UploadForm;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * SchoolRankController implements the CRUD actions for SchoolRank model.
 */
class SchoolRankController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all SchoolRank models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = SchoolRank::find();
         $querys = Yii::$app->request->get('query');
        if(count($querys) > 0){
            $condition = "";
            $parame = array();
            foreach($querys as $key=>$value){
                $value = trim($value);
                if(empty($value) == false){
                    $parame[":{$key}"]=$value;
                    if(empty($condition) == true){
                        $condition = " {$key}=:{$key} ";
                    }
                    else{
                        $condition = $condition . " AND {$key}=:{$key} ";
                    }
                }
            }
            if(count($parame) > 0){
                $query = $query->where($condition, $parame);
            }
        }

        $pagination = new Pagination([
            'totalCount' =>$query->count(), 
            'pageSize' => '10', 
            'pageParam'=>'page', 
            'pageSizeParam'=>'per-page']
        );
        
        $orderby = Yii::$app->request->get('orderby', '');
        if(empty($orderby) == false){
            $query = $query->orderBy($orderby);
        }
        
        
        $models = $query
        ->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();
        $total = 0;
        $res = $query->asArray()->all();
        foreach ($res as $v){
            $total += $v['total'];
        }
        return $this->render('index', [
            'models'=>$models,
            'total'=>$total,
            'pages'=>$pagination,
            'query'=>$querys,
        ]);
    }

    /**
     * Displays a single SchoolRank model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new SchoolRank model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $img_url = true;
        $model1 = new UploadForm();
        $model = new SchoolRank();
        if(UploadedFile::getInstance($model1, 'imageFile')){
            $model1->imageFile = UploadedFile::getInstance($model1, 'imageFile');
            $img_url = $model1->upload();
        }

        if($img_url){
            if ($model->load(Yii::$app->request->post())) {

                $model->update_date = date('Y-m-d H:i:s');
                $model->head_url = $img_url;
                if($model->validate() == true && $model->save()){
                    $msg = array('errno'=>0, 'msg'=>'保存成功');
                    echo json_encode($msg);
                }
                else{
                    $msg = array('errno'=>2, 'data'=>$model->getErrors());
                    echo json_encode($msg);
                }
            } else {
                $msg = array('errno'=>2, 'msg'=>'数据出错');
                echo json_encode($msg);
            }
        }else{
            $msg = array('errno'=>3, 'msg'=>'图片格式不正确');
            echo json_encode($msg);
        }

    }

    /**
     * Updates an existing SchoolRank model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate()
    {
        $img_url = 1;
        $model1 = new UploadForm();
        $id = Yii::$app->request->post('id');
        $model = $this->findModel($id);
        if(UploadedFile::getInstance($model1, 'imageFile')){
            $model1->imageFile = UploadedFile::getInstance($model1, 'imageFile');
            $img_url = $model1->upload();
        }
        if($img_url){
            if ($model->load(Yii::$app->request->post())) {
                $model->update_date = date('Y-m-d H:i:s');
                $post = Yii::$app->request->post();
                if($img_url && $img_url != 1){
                    $model->head_url = $img_url;
                }else{
                    $model->head_url = $post['hidden_img'];
                }
                if($model->validate() == true && $model->save()){
                    $msg = array('errno'=>0, 'msg'=>'保存成功');
                    echo json_encode($msg);
                }
                else{
                    $msg = array('errno'=>2, 'data'=>$model->getErrors());
                    echo json_encode($msg);
                }
            } else {
                $msg = array('errno'=>2, 'msg'=>'数据出错');
                echo json_encode($msg);
            }
        }else{
            $msg = array('errno'=>3, 'msg'=>'图片格式不正确');
            echo json_encode($msg);
        }
    }

    /**
     * Deletes an existing SchoolRank model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = SchoolRank::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the SchoolRank model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return SchoolRank the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SchoolRank::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
