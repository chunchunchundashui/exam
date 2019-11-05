<?php
namespace app\admin\validate;
use think\Validate;
class User extends Validate{

    protected $rule = [
        'major_name' => 'require',
        'subject_name' => 'require',
    ];

    protected $message = [
        'major_name.require' => '专业名称必须填写',
        'subject_name.require' => '科目名称必须填写',
    ];
}