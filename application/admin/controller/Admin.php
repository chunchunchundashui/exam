<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use think\Cache;
/*
 * 管理员添加
 */
class Admin extends Common{
    //管理员页显示
    public function index(){
        //获取管理员下对应的角色id以及管理员信息
        $data = model('Admin')->getAllData(1);
        $this->assign('data',$data);
        //获取所有角色
        $role = Db::name('role')->where("status",1)->select();
        $this->assign('role',$role);
        return $this->fetch();
    }

    //管理员添加
    public function add(){
        if(request()->isPost()){
            $id = Cookie::get('id');
            //删除缓存文件
            Cache::rm('user_'.$id);
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }

            //2019年10月29日21:27:43
            //如果是超级管理员  添加数据库隐藏  status 0  需单独判断
            //将角色id数组 转成字符串
            $role = implode(',',$data['role']);
            if($role == 1){
                //添加时间
                $data['add_time'] = date("Y-m-d H:i:s");
                $data['status'] = 0;
                unset($data['role']);
                $id = Db::name('admin')->insertGetId($data);
                $admin_role = array(
                    'admin_id' => $id,
                    'role_id' => $role
                );
                if ($id) {
                    //添加到 管理员与角色的中间表
                    Db::name('admin_role')->insert($admin_role);
                    return json(array('status' => 1, 'msg' => '添加成功'));
                } else {
                    return json(array('status' => 0, 'msg' => '添加失败'));
                }
            }

            //添加数据到管理员表
            $id = model('admin')->addAdmin($data);
            //将角色id数组 转成字符串
            $data['role'] = implode(',',$data['role']);
                $admin_role = array(
                    'admin_id' => $id,
                    'role_id' => $data['role']
                );
            if ($id) {
                //添加到 管理员与角色的中间表
                Db::name('admin_role')->insert($admin_role);
                return json(array('status' => 1, 'msg' => '添加成功'));
            } else {
                return json(array('status' => 0, 'msg' => '添加失败'));
            }
        }else{
            $data = Db::name('role')->where("status",1)->select();
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //管理员修改
    public function edit(){
        if(request()->isPost()){
            $id = Cookie::get('id');
            //删除缓存文件
            Cache::rm('user_'.$id);
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            //修改数据到管理员表
            $res = model('Admin')->updateAdmin($data);
            //将角色id数组 转成字符串
            $data['role'] = implode(',',$data['role']);
            $admin_role = array(
                'admin_id' => $data['id'],
                'role_id' => $data['role']
            );
            if ($res !== false){
                //修改管理员与角色的中间表
                Db::name('admin_role')->where("admin_id",$data['id'])->update($admin_role);
                return json(array('status'=>1,'msg'=>'修改成功'));
            }else{
                return json(array('status'=>0,'msg'=>'修改失败'));
            }
        }else{
            $id = input('get.id');
            //获取管理员下对应的角色id
            $data = Db::name('admin')->alias('a')
                ->join('em_admin_role b', 'a.id=b.admin_id')
                ->join('em_role c','b.role_id=c.id')
                ->field('a.*,b.role_id')
                ->where("a.id",$id)->find();
            //获取角色信息
            $role = Db::name('role')->where("status",1)->select();
            $this->assign('role',$role);
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //管理员的删除
    public function del(){
        $id = Cookie::get('id');
        //删除缓存文件
        Cache::rm('user_'.$id);
        $model = Db::name('admin');
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
    //专业状态开关(关)
    public function Off(){
        $id = input('post.id');
        $res = Db::name('admin')->where('id',$id)->setField('on_off',0);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'关闭失败'));
        }
    }

    //专业状态开关(开)
    public function On(){
        $id = input('post.id');
        $res = Db::name('admin')->where('id',$id)->setField('on_off',1);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'开启失败'));
        }
    }

    //导入教室列表  管理员
    public function import(){
        action('admin/Excel/impUser',['table_name'=>'em_admin']);
    }
}