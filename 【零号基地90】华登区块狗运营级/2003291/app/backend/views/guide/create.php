<?php

/**
 * @author shuang
 * @date 2016-8-2 11:07:51
 */
use common\widgets\MYActiveForm;
use yii\helpers\Url;
use common\components\MTools;

/* --操作提示-start- */
echo $this->render("/layouts/prompt", array("labels" => $labels));
/* --操作提示-end- */

/* --表单域-start- */
$model->flags = $model->flags ? explode(",", $model->flags) : null;
MYActiveForm::begin([
    "action" => Url::toRoute($action),
    "model" => $model,
    "fields" => [
        "title" => [
            "type" => "text"
        ],
        "title_en" => [
            "type" => "text"
        ],
         "content"=>[
            "type"=>"ueditor"
        ],
        "content_en"=>[
            "type"=>"ueditor_en"
        ],
        "id" => [
            "type" => "hidden"
        ]
    ]
]);
MYActiveForm::end();
