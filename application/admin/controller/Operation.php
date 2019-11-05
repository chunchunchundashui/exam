<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
/*
 * 操作题
 */
class Operation extends Common
{

    //操作题页面
    public function index()
    {
        //获取操作题下对应的专业和科目信息
        $data = model('operation')->getAllData(1);
        $this->assign('data',$data);
        //获取专业信息
        $major = db('major')->where("status",1)->select();
        $this->assign('major',$major);
        //获取科目信息
        $subject = db('subject')->where("status",1)->select();
        $this->assign('subject',$subject);
        return $this->fetch();
    }

    //操作题添加
    public function add(){
        if (request()->isPost()) {
            $model = Db::name('operation');
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
        } else {
            //获取专业信息
            $major = db('major')->where("status",1)->select();
            $this->assign('major',$major);
            //获取科目信息
            $subject = db('subject')->where("status",1)->select();
            $this->assign('subject',$subject);
            return $this->fetch();
        }
    }

    //操作题修改
    public function edit(){
        if(request()->isPost()){
            $model = Db::name('operation');
            $data = input('post.data/a');
            if (!$data) {
                return json(array('status' => 0, 'msg' => '参数错误'));
            }
            //循环进行将特殊字符转换为 HTML 实体
            foreach ($data as $key => $value){
                $data_html[$key] = htmlspecialchars($value);
            }
            $res = $model->where("id",$data['id'])->update($data_html);
            if ($res !== false){
                return json(array('status'=>1,'msg'=>'修改成功'));
            }else{
                return json(array('status'=>0,'msg'=>'修改失败'));
            }
        }else{
            $model = Db::name('operation');
            $id = input('get.id');
            $data = $model->where("id",$id)->find();
            $this->assign('data',$data);
            //获取专业信息
            $major = db('major')->where("status",1)->select();
            $this->assign('major',$major);
            //获取科目信息
            $subject = db('subject')->where("status",1)->select();
            $this->assign('subject',$subject);
            return $this->fetch();
        }
    }

    //操作题的删除
    public function del(){
        $model = Db::name('operation');
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

    //操作题回收站
    public function trash(){
        //获取操作题下对应的专业和科目信息
        $data = model('operation')->getAllData(0);
        $this->assign('data',$data);
        return $this->fetch();
    }

    //操作题回收站操作题的恢复
    public function recover(){
        $model = Db::name('operation');
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

    //操作题回收站操作题彻底删除
    public function remove(){
        $model = Db::name('operation');
        $id = input('post.id');
        $res = $model->where("id",$id)->delete();
        if ($res){
            return json(array('status'=>1,'msg'=>'彻底删除成功'));
        }else{
            return json(array('status'=>0,'msg'=>'彻底删除失败'));
        }
    }

    //二级联动 返回数据
    public function major(){
        $major_id = input('post.major_id');
        $data = Db::name('subject')->where("major_id",$major_id)->select();
        return json($data);
    }

    //导入题 二级联动
    public function major1(){
        $major_id = input('post.major_id1');
        $data = Db::name('subject')->where("major_id",$major_id)->select();
        return json($data);
    }

    //导入题
    public function import(){
        action('admin/Excel/impUser',['table_name'=>'em_operation']);
    }

    //导出题
    public function expData(){
        action('admin/Download/out',['table_name'=>'em_operation']);
    }

    //上传提题库
    public function upload(){
        $id = input('get.id');
        //获取表单上传文件
        $file = request()->file('operation');
        if($file){
            // 移动到框架应用根目录/public/uploads/ 目录下
            $info = $file->move(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation' . DS . $id);
            if($info){
                Db::name('operation')->where('id',$id)->update(['pathinfo'=>'public/uploads'.DS.'operation'.DS.$id.DS.$info->getSaveName()]);
                $this->success('上传成功');
            }else{
                // 上传失败获取错误信息
                $this->error($file->getError());
            }
        }
    }

    //download方法  下载操作题
    public function download(){
        //接受id
        $id = input('get.id');
        //查询数据
        $data = Db::name('operation')->where('id',$id)->value('pathinfo');
        //下载代码
        $filename = ROOT_PATH.$data;
        //输出文件
        header("Content-type: application/octet-stream");
        header( "Content-Disposition:  attachment;  filename=". $filename);
        //输出缓冲区
        readfile($filename);
    }
}