<?php

namespace backend\controllers;

use Yii;
use yii\data\Pagination;
use backend\models\IndexImg;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\UploadForm;
use yii\web\UploadedFile;

/**
 * IndexImgController implements the CRUD actions for IndexImg model.
 */
class IndexImgController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all IndexImg models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = IndexImg::find();
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
        return $this->render('index', [
            'models'=>$models,
            'pages'=>$pagination,
            'query'=>$querys,
        ]);
    }

    /**
     * Displays a single IndexImg model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new IndexImg model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new IndexImg();
        if ($model->load(Yii::$app->request->post())) {
        
              $model->update_date = date('Y-m-d H:i:s');        
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
    }

    /**
     * Updates an existing IndexImg model.
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
                    $model->img_url = $img_url;
                }else{
                    $model->img_url = $post['hidden_img'];
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
     * Deletes an existing IndexImg model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = IndexImg::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the IndexImg model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return IndexImg the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = IndexImg::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
