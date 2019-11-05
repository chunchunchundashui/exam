<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use think\Cache;
class Role extends Common{

    //角色页面显示
    public function index(){
        $data = model('Role')->getAllData(1);
        $this->assign('data',$data);
        //获取所有权限
        $rule = Db::name('rule')->select();
        $this->assign('rule',$rule);
        return $this->fetch();
    }

    //角色添加
    public function add(){
        if(request()->isPost()){
            $id = Cookie::get('id');
            //删除缓存文件
            Cache::rm('user_'.$id);
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            $data['add_time'] = date("Y-m-d H:i:s");
            //添加数据到角色表
            $id = model('Role')->addRole($data);
            //将权限id数组 转成字符串
            $data['rule'] = implode(',',$data['rule']);
            $role_rule = array(
                'role_id' => $id,
                'rule_id' => $data['rule']
            );
            if ($id) {
                //添加到 角色与权限的中间表
                Db::name('role_rule')->insert($role_rule);
                return json(array('status' => 1, 'msg' => '添加成功'));
            } else {
                return json(array('status' => 0, 'msg' => '添加失败'));
            }
        }else{
            //查询出所有权限信息
            $rule = Db::name('rule')->select();
            $this->assign('rule',$rule);
            return $this->fetch();
        }
    }

    //角色编辑
    public function edit(){
        if(request()->isPost()){
            $id = Cookie::get('id');
            //删除缓存文件
            Cache::rm('user_'.$id);
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            //修改数据到角色表
            $res = model('Role')->updateRole($data);
            //将权限id数组 转成字符串
            $data['rule'] = implode(',',$data['rule']);
            $role_rule = array(
                'role_id' => $data['id'],
                'rule_id' => $data['rule']
            );
            if ($res !== false){
                //修改角色与权限的中间表
                Db::name('role_rule')->where("role_id",$data['id'])->update($role_rule);
                return json(array('status'=>1,'msg'=>'修改成功'));
            }else{
                return json(array('status'=>0,'msg'=>'修改失败'));
            }
        }else{
            $id = input('get.id');
            //查询出角色信息
            $data = Db::name('role')->alias('a')
                ->join('em_role_rule b', 'a.id=b.role_id')
                ->field('a.*,b.rule_id')
                ->where("a.id",$id)->find();
            //查询出所有权限信息
            $rule = Db::name('rule')->select();
            $this->assign('rule',$rule);
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //角色的删除
    public function del(){
        $id = Cookie::get('id');
        //删除缓存文件
        Cache::rm('user_'.$id);
        $model = Db::name('role');
        $id = input('post.id/a');
        //转换成数组方便使用mysql in语法
        $id = implode(',',$id);
        $res = $model->where("id in ($id)")->setField("status",0);
        if ($res){
            return json(array('status'=>1,'msg'=>'删除成功'));
        }else{
            return json(array('status'=>0,'msg'=>'删除失败'));
        }
    }
}