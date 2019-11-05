<?php
namespace app\admin\controller;
use think\Controller;
use think\Cookie;
use think\Db;
use think\Hook;
use think\Cache;
class Common extends Controller{

    //构造函数
    public function _initialize()
    {
        //用户登陆判断
//        Hook::exec('app\\admin\\behavior\\Login','run',$params);
        Hook::add('app_init', 'app\\admin\\behavior\\Login');
        Hook::listen('app_init');

        //权限判断
        Hook::add('app_init', 'app\\admin\\behavior\\Rule');
        Hook::listen('app_init');
    }
}