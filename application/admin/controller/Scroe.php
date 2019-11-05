<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;

/*
 * 教师阅卷
 */
class Scroe extends Controller{

    //教师阅卷列表
    public function teacherIndex(){
        $data = model('topic')->getAllData(1);
        $this->assign('data',$data);
        //获取专业信息
        $major = db('major')->where("status",1)->select();
        $this->assign('major',$major);
        //查询考试开关
        $status = Db::name('exam_status')->value('on_off');
        $this->assign('status',$status);
        return $this->fetch();
    }

    //教师阅卷
    public function teacherRead(){
        if(request()->isPost()){
            $data = input('post.data/a');
            $model = Db::name('topic');
            //查询出原数据库成绩
            $info = $model->where('id',$data['id'])->find();
            //1 为已经阅卷 0为未阅卷  2为已阅卷等待教务处审核
            if($info['not_read'] == 1 || $info['not_read'] == 2){
                return json(array('status' => 0, 'msg' => '已经阅卷'));
            }
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            //修改成绩与原成绩相加  修改阅卷状态 2 待审核
            $res = $model->where('id',$data['id'])->update(['scroe'=>$info['scroe']+$data['scroe'],'not_read'=>2,'operation_scroe'=>$data['scroe']]);
            if ($res !== false){
                return json(array('status'=>1,'msg'=>'阅卷成功'));
            }else{
                return json(array('status'=>0,'msg'=>'阅卷失败'));
            }
        }else{
            $id = input('get.id');
            $model = Db::name('topic');
            //链表查询出专业科目 and 成绩
            $data = $model->alias('a')->field('a.*,b.major_name,c.subject_name')
                ->join('em_major b','a.major_id=b.id')
                ->join('em_subject c','a.subject_id=c.id')->where('a.id',$id)->find();
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //教务处阅卷列表   只显示 待审核 和 已经阅卷
    public function officeIndex(){
        $data = model('topic')->getOfficeData(1);
        $this->assign('data',$data);
        //获取专业信息
        $major = db('major')->where("status",1)->select();
        $this->assign('major',$major);
        return $this->fetch();
    }

    //教务处阅卷
    public function officeRead(){
        if(request()->isPost()){
            $data = input('post.data/a');
            $model = Db::name('topic');
            //查询出原数据库成绩
            $info = $model->where('id',$data['id'])->find();
            //1 为已经阅卷 0为未阅卷  2为已阅卷等待教务处审核
            if($info['not_read'] == 1){
                return json(array('status' => 0, 'msg' => '已经审核'));
            }
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            //修改阅卷状态为  1 已阅卷
            $res = $model->where('id',$data['id'])->update(['not_read'=>1]);
            if ($res !== false){
                return json(array('status'=>1,'msg'=>'审核成功'));
            }else{
                return json(array('status'=>0,'msg'=>'审核失败'));
            }
        }else{
            $id = input('get.id');
            $model = Db::name('topic');
            //链表查询出专业科目 and 成绩
            $data = $model->alias('a')->field('a.*,b.major_name,c.subject_name')
                ->join('em_major b','a.major_id=b.id')
                ->join('em_subject c','a.subject_id=c.id')->where('a.id',$id)->find();
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    //教师阅卷的删除
    public function del(){
        $model = Db::name('topic');
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

    //教务处阅卷的删除
    public function officedel(){
        $model = Db::name('topic');
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

    //教师阅卷回收站
    public function trash(){
        $model = Db::name('topic');
        $count = $model->count();
        //链表查询出专业科目 and 成绩
        $data = $model->alias('a')->field('a.*,b.major_name,c.subject_name')
            ->join('em_major b','a.major_id=b.id')
            ->join('em_subject c','a.subject_id=c.id')->where("a.status",0)->paginate(20,$count);
        $this->assign('data',$data);
        return $this->fetch();
    }

    //教师阅卷回收站的恢复
    public function recover(){
        $model = Db::name('topic');
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

    //教师阅卷回收站的彻底删除
    public function remove(){
        $model = Db::name('topic');
        $id = input('post.id');
        $res = $model->where("id",$id)->delete();
        if ($res){
            return json(array('status'=>1,'msg'=>'彻底删除成功'));
        }else{
            return json(array('status'=>0,'msg'=>'彻底删除失败'));
        }
    }

    //考试状态开关(关)
    public function Off(){
        $id = input('post.id');
        $res = Db::name('exam_status')->where('id',$id)->setField('on_off',0);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'关闭失败'));
        }
    }

    //考试状态开关(开)
    public function On(){
        $id = input('post.id');
        $res = Db::name('exam_status')->where('id',$id)->setField('on_off',1);
        if($res){
            return json(array('status'=>1));
        }else{
            return json(array('status'=>0,'msg'=>'开启失败'));
        }
    }

    //download方法  下载操作题
    public function download(){
        //接受id
        $id = input('get.id');
        //查询数据
        $data = Db::name('topic')->where('id',$id)->value('pathinfo');
        //下载代码
        $filename = ROOT_PATH.$data;
        //输出文件
        header("Content-type: application/octet-stream");
        header( "Content-Disposition:  attachment;  filename=". $filename);
        //输出缓冲区
        readfile($filename);
    }

    //二级联动 返回数据
    public function major(){
        $major_id = input('post.major_id');
        $data = Db::name('subject')->where("major_id",$major_id)->select();
        return json($data);
    }
}