<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Major extends Common{

    //专业管理页面显示
    public function index(){
        $data = model('major')->getAllData(1);
        $this->assign('data',$data);
        return $this->fetch();
    }

    //专业管理 添加
    public function add(){
        if (request()->isPost()) {
            $model = Db::name('major');
            $data = input('post.data/a');
            $data['add_time'] = date("Y-m-d H:i:s");
            $res = $model->insert($data);
            if ($res) {
                return json(array('status' => 1, 'msg' => '添加成功'));
            } else {
                return json(array('status' => 0, 'msg' => '添加失败'));
            }
        } else {
            return $this->fetch();
        }
    }

    //专业管理 删除
    public function del(){
        $model = Db::name('major');
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

    //专业管理修改
    public function edit(){
        if(request()->isPost()){
            $model = Db::name('major');
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
            $model = Db::name('major');
            $id = input('get.id');
            $data = $model->where("id",$id)->find();
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //专业状态开关(关)
    public function Off(){
        $id = input('post.id');
        $res = Db::name('major')->where('id',$id)->setField('on_off',0);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'关闭失败'));
        }
    }

    //专业状态开关(开)
    public function On(){
        $id = input('post.id');
        $res = Db::name('major')->where('id',$id)->setField('on_off',1);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'开启失败'));
        }
    }
}