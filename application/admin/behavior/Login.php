<?php
namespace app\admin\behavior;
use think\Cookie;
use think\Controller;
class Login extends Controller {

    //行为的执行入口方法
    public function run(&$params){
        //判断当前用户是否登录
        $admin = Cookie::get('admin');
        if(!$admin){
//            $this->error('没有登录',url('Login/login'));
            $url = url('Login/login');
            echo "<script>top.location.href='$url'</script>";
        }
    }
}