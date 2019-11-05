<?php
namespace app\admin\controller;
use think\Controller;
use think\Cookie;
use think\Cache;
use think\Db;

class Index extends Common {

    public function index(){
        $id = Cookie::get('id');
        //读取缓存中的权限 显示菜单栏
        $rule = Cache::get('user_'.$id);
        $this->assign('menus',$rule['menus']);
        return $this->fetch();
    }

    public function welcome(){
        $time = date('Y-m-d H:i:s');
        $this->assign('time',$time);
        return $this->fetch();
    }

    //清空execl缓存文件
    public function delExcel(){
        //判断php系统环境
        if(PHP_OS == 'WINNT'){
            //windows删除
            system("rmdir ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'excel') . " /s /q");
            return json(['status'=>1,'msg'=>'清空execl缓存文件成功!']);
        }else{
            //linux删除
            system("rm -rf ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'excel'));
            return json(['status'=>1,'msg'=>'清空execl缓存文件成功!']);
        }
    }

    //清空操作题目文件
    public function delOperation(){
        //判断php系统环境
        if(PHP_OS == 'WINNT'){
            //windows删除
            system("rmdir ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation') . " /s /q");
            //执行原生sql  更新 pathinfo不为空  成空
            Db::execute("update em_operation set pathinfo = '' where pathinfo is not null");
            return json(['status'=>1,'msg'=>'清空操作题目文件成功!']);
        }else{
            //linux删除
            system("rm -rf ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation'));
            //执行原生sql  更新 pathinfo不为空  成空
            Db::execute("update em_operation set pathinfo = '' where pathinfo is not null");
            return json(['status'=>1,'msg'=>'清空操作题目文件成功!']);
        }
    }

    //清空操作上传答案文件
    public function delOperationUpload(){
        //判断php系统环境
        if(PHP_OS == 'WINNT'){
            //windows删除
            system("rmdir ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload') . " /s /q");
            //执行原生sql  更新 pathinfo不为空  成空
            Db::execute("update em_topic set pathinfo = '' where pathinfo is not null");
            return json(['status'=>1,'msg'=>'清空操作上传答案文件成功!']);
        }else{
            //linux删除
            system("rm -rf ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload'));
            //执行原生sql  更新 pathinfo不为空  成空
            Db::execute("update em_topic set pathinfo = '' where pathinfo is not null");
            return json(['status'=>1,'msg'=>'清空操作上传答案文件成功!']);
        }
    }
}