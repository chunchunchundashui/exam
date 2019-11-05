<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use think\Cache;
class Rule extends Common{

    //权限页面显示
    public function index(){
        $count = Db::name('rule')->count();
        $data = Db::name('rule')->order('id')->paginate(20,$count);
        //解决分页选择上级权限bug  bug只显示单页的权限
        $rule = Db::name('rule')->select();
        $this->assign('data',$data);
        $this->assign('rule',$rule);
        return $this->fetch();
    }

    //权限添加
    public function add(){
        $id = Cookie::get('id');
        //删除缓存文件
        Cache::rm('user_'.$id);
        $model = Db::name('rule');
        $data = input('post.data/a');
        if (!$data) {
            return json(array('status' => 0, 'msg' => '参数错误'));
        }
        $data['add_time'] = date("Y-m-d H:i:s");
        $res = $model->insert($data);
        if ($res) {
            return json(array('status' => 1, 'msg' => '添加成功'));
        } else {
            return json(array('status' => 0, 'msg' => '添加失败'));
        }
    }

    //权限编辑
    public function edit(){
        if(request()->isPost()){
            $id = Cookie::get('id');
            //删除缓存文件
            Cache::rm('user_'.$id);
            $model = Db::name('rule');
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            $res = $model->where("id",$data['id'])->update($data);
            if ($res !== false){
                return json(array('status'=>1,'msg'=>'修改成功'));
            }else{
                return json(array('status'=>0,'msg'=>'修改失败'));
            }
        }else{
            $model = Db::name('rule');
            $id = input('get.id');
            $data = $model->where("id",$id)->find();
            //查询出所有权限信息
            $rule = $model->select();
            $this->assign('data',$data);
            $this->assign('rule',$rule);
            return $this->fetch();
        }
    }

    //权限的删除
    public function del(){
        $id = Cookie::get('id');
        //删除缓存文件
        Cache::rm('user_'.$id);
        $model = Db::name('rule');
        $id = input('post.id/a');
        //转换成数组方便使用mysql in语法
        $id = implode(',',$id);
        $res = $model->where("id in ($id)")->setField("is_show",0);
        if ($res){
            return json(array('status'=>1,'msg'=>'删除成功'));
        }else{
            return json(array('status'=>0,'msg'=>'删除失败'));
        }
    }
}