<?php
namespace app\admin\controller;
use think\captcha\Captcha;
use think\Controller;
use think\Cookie;
use think\Cache;
/*
 * 管理员登陆
 */
class Login extends Controller
{

    //验证登陆
    public function login(){
        if (request()->isPost()) {
            $data = input('post.data/a');
            //验证 验证码
            $captcha = new Captcha();
            $res = $captcha->check($data['captcha']);
            if(!$res){
                $this->verify();
                return json(array('status'=>0,'msg'=>'验证码错误'));
            }
            //调用模型验证用户和密码
            $json = model('Admin')->login($data);
            //返回json数据
            return $json;
        } else {
            return $this->fetch();
        }
    }

    //退出登录
    public function logout(){
        $id = Cookie::get('id');
        //删除缓存文件
        Cache::rm('user_'.$id);
        //删除cookie
        Cookie::delete('admin');
        Cookie::delete('username');
        Cookie::delete('id');
        //跳转到登陆页面
        $this->redirect(url('Login/login'));
    }

    //生成验证码
    public function verify()
    {
        //如果gd库也开启了但是就是不能正常的生成验证码可以使用ob_clean()实现
        $config = array(
            'fontSize' => 20,              // 验证码字体大小(px)
            'useCurve' => false,            // 是否画混淆曲线
            'useNoise' => false,            // 是否添加杂点
            'imageH' => 50,               // 验证码图片高度
            'imageW' => 140,               // 验证码图片宽度
            'length' => 4,               // 验证码位数
            'fontttf' => '4.ttf',              // 验证码字体，不设置随机获取
            'reset ' => true
        );
        //实例化验证码类
        $captcha = new Captcha($config);
        return $captcha->entry();
    }
}