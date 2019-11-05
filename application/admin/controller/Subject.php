<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Loader;
class Subject extends Common{

    //科目页面显示
    public function index(){
        //获取科目下对应的专业信息
        $data = model('subject')->getAllData(1);
        $this->assign('data',$data);
        //获取所有专业信息
        $major = Db::name('major')->select();
        $this->assign('major',$major);
        return $this->fetch();
    }

    //科目 添加
    public function add(){
        if (request()->isPost()) {
            $model = Db::name('subject');
            $data = input('post.data/a');
            //验证器
            $data_validate = [
                'subject_name' => $data['subject_name'],
                'major_name' => $data['major_id'],
            ];
            $validate = Loader::validate('User');
            if(!$validate->check($data_validate)){
                return json(array('status' => 0, 'msg' => $validate->getError()));
            }
            //添加时间数据
            $data['add_time'] = date("Y-m-d H:i:s");
            $res = $model->insert($data);
            if ($res) {
                return json(array('status' => 1, 'msg' => '添加成功'));
            } else {
                return json(array('status' => 0, 'msg' => '添加失败'));
            }
        } else {
            //获取专业信息
            $major = db('major')->where("status",1)->select();
            $this->assign('major',$major);
            return $this->fetch();
        }
    }

    //科目 删除
    public function del(){
        $model = Db::name('subject');
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

    //科目修改
    public function edit(){
        if(request()->isPost()){
            $model = Db::name('subject');
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
            $model = Db::name('subject');
            $id = input('get.id');
            $data = $model->where("id",$id)->find();
            $this->assign('data',$data);
            //获取专业信息
            $major = db('major')->where("status",1)->select();
            $this->assign('major',$major);
            return $this->fetch();
        }
    }

    //科目状态开关(关)
    public function Off(){
        $id = input('post.id');
        $res = Db::name('subject')->where('id',$id)->setField('on_off',0);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'关闭失败'));
        }
    }

    //科目状态开关(开)
    public function On(){
        $id = input('post.id');
        $res = Db::name('subject')->where('id',$id)->setField('on_off',1);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'开启失败'));
        }
    }

    //二级联动 返回数据
    public function major(){
        $major_id = input('post.major_id');
        $data = Db::name('subject')->where("major_id",$major_id)->select();
        return json($data);
    }
}