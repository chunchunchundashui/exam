<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
/*
 * 学生管理
 */
class Students extends Common{
    //学生列表
    public function index(){
        $data = model('Students')->getAllData(1);
        $this->assign('data',$data);
        //获取专业信息
        $major = db('major')->where("status",1)->select();
        $this->assign('major',$major);
        return $this->fetch();
    }

    //学生添加  (后台jq提交)
    public function add(){
        if(request()->isPost()){
            $model = Db::name('students');
            $data = input('post.data/a');
            if (!$data){
                return json(array('status'=>0,'msg'=>'参数错误'));
            }
            $data['add_time'] = date("Y-m-d H:i:s");
            $res = $model->insert($data);
            if($res){
                return json(array('status'=>1,'msg'=>'添加成功'));
            }else{
                return json(array('status'=>0,'msg'=>'添加失败'));

            }
        }else{
            //查询出所有专业
            $major = Db::name('major')->where("status",1)->select();
            $this->assign('major',$major);
            return $this->fetch();
        }
    }

    //学生的删除
    public function del(){
        $model = Db::name('students');
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

    //学生的编辑
    public function edit(){
        if(request()->isPost()){
            $data = input('post.data/a');
            $model = Db::name('students');
            if (!$data){
                return json(array('status'=>0,'msg'=>'参数错误'));
            }
            $res = $model->where("id",$data['id'])->update($data);
            if ($res !== false){
                return json(array('status'=>1,'msg'=>'修改成功'));
            }else{
                return json(array('status'=>0,'msg'=>'修改失败'));
            }
        }else{
            $id = input('get.id');
            //查询学生信息
            $model = Db::name('students');
            $data = $model->where("id",$id)->find();
            //查询出所有专业
            $major = Db::name('major')->where("status",1)->select();
            $this->assign('major',$major);
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //学生回收站
    public function trash(){
        $model = Db::name('students');
        //获取数据总条数 实现分页
        $count = $model->where("status",0)->count();
        $data = $model->where("status",0)->paginate(20,$count);
        $this->assign('data',$data);
        return $this->fetch();
    }

    //学生回收站学生的恢复
    public function recover(){
        $model = Db::name('students');
        $id = input('post.id/a');
        //转换成数组方便使用mysql in语法
        $id = implode(',',$id);
        //状态恢复
        $res = $model->where("id in ($id)")->setField("status",1);
        if ($res){
            return json(array('status'=>1,'msg'=>'已恢复'));
        }else{
            return json(array('status'=>0,'msg'=>'恢复失败'));
        }
    }

    //学生回收站学生彻底删除
    public function remove(){
        $model = Db::name('students');
        $id = input('post.id');
        $res = $model->where("id",$id)->delete();
        if ($res){
            return json(array('status'=>1,'msg'=>'彻底删除成功'));
        }else{
            return json(array('status'=>0,'msg'=>'彻底删除失败'));
        }
    }

    //导入题
    public function import(){
        action('admin/Excel/impUser',['table_name'=>'em_students']);
    }

    //导出题
    public function expData(){
        action('admin/Download/out',['table_name'=>'em_students']);
    }

}