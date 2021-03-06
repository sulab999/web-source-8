<?php

use yii\helpers\Url;
use common\widgets\DatalistWidgets;

echo $this->render("/layouts/prompt", array("labels" => $labels));


//调用数据列表模板
echo DatalistWidgets::widget([
    'data_url' => Url::toRoute("file/ajaxdirlist"),
    "labels" => $labels,
    "columns" => ["name", "title", "action"],
    "toolbar" => "#toolbar"
]);
//操作按钮
echo common\widgets\Toolbar::widget([
    "buttons" => [
        "createdir" => [
            "title" => "添加",
            "icon" => "create"
        ]
    ]
]);
