<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;

Route::rule('api/login', 'api/index/login', 'get | post');        //学生登陆路由
Route::rule('api/changePassword', 'api/index/changePassword', 'post');      //修改密码路由
Route::rule('api/getQuestion', 'api/index/getQuestion', 'get | post');      //开始考试路由
Route::rule('api/commitQuestion', 'api/index/commitQuestion', 'get | post');      //提交考试路由
Route::rule('api/getGrade', 'api/index/getGrade', 'get');      //请求成绩
Route::rule('api/getUserinfo', 'api/index/getUserinfo', 'get');      //请求信息
Route::rule('api/upload', 'api/index/upload', 'post');      //上传操作题
Route::rule('api/download', 'api/index/download', 'get');      //下载操作题
Route::rule('/answer', 'api/index/answer', 'get');
Route::rule('/commit', 'api/index/commit', 'get');
Route::rule('/score', 'api/index/score', 'get');

$origin = isset($_SERVER['HTTP_ORIGIN'])? $_SERVER['HTTP_ORIGIN'] : '';

header("Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE");
header('Access-Control-Allow-Headers:x-requested-with');
header('Access-Control-Allow-Method:POST,GET');//允许访问的方式
header('Set-Cookie: cross-site-cookie=name; SameSite=None; Secure');
header('Access-Control-Max-Age:86400');
header('Access-Control-Allow-Origin:'.$origin);
header('Access-Control-Allow-Credentials:true');
header('Access-Control-Allow-Methods:GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers:x-requested-with,content-type');
header('Access-Control-Allow-Headers:Origin, No-Cache, X-Requested-With, If-Modified-Since');

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],

];
