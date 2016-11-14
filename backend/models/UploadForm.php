<?php
namespace backend\models;

use yii\web\UploadedFile;

class UploadForm extends \backend\models\BaseModel
{
    /**
     * @var UploadedFile
     */
    public $imageFile; //cover

    public $imageFile5;

    public function rules()
    {
        return [
            [['imageFile'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg'],
            [['imageFile5'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg','maxFiles'=>0],
        ];
    }

    public function upload()
    {
        if ($this->validate()) {
            
            $time = time().mt_rand('1000','9999');
            $flog = $this->imageFile->saveAs('uploads/' . $time . '.' . $this->imageFile->extension);
            if ($flog) {
                $img_url = 'uploads/' . $time . '.' . $this->imageFile->extension;
                return $img_url;
            }

            return false;
        }
    }

    public function uploadMulti()
    {
        if ($this->validate()) {
            $files = array();
            foreach($this->imageFile5 as $file){
                $time = time().mt_rand('1000','9999');
                $filename = $file->saveAs('skin/uploads/' . $time . '.' . $file->extension);
                if ($filename) {
                    $img_url = 'skin/uploads/' . $time . '.' . $file->extension;
                    $files[] = $img_url;
                    //return $files;
                 }
            }
            return $files ;
        }
    }
}