<?php
namespace app\api\model;
use think\Db;
use think\Model;
use think\Session;
use think\Cookie;
class Students extends Model{

    //实现学生登陆
    public function login($data){
        //判断考试开关状态
        $status = Db::name('exam_status')->select();
        if($status[0]['on_off'] == 0){
            return json(['code'=>0,'msg'=>$status[0]['content']]);
        }
        $username = $data['username'];
        //检查用户名是否存在
        $info = $this->where("id_card = '$username' and status = 1")->find();
        if(!$info){
            //用户不存在
            return json(['code'=>0,'msg'=>'用户不存在']);
        }
        if($data['password'] != $info['password']){
            //密码错误
            return json(['code'=>0,'msg'=>'密码错误']);
        }
        Session::set('admin',$info);
        //保存用户的信息
        $data = $this->where("id_card",$data['username'])->find();
        $id_card = $data['id_card'];
        //获取专业科目信息
        $major_subject = $this->alias('a')->field('b.major_name,c.id,c.subject_name')
            ->join('em_major b','a.major_id=b.id')
            ->join('em_subject c','b.id=c.major_id')->where("c.on_off=1 and b.status=1 and c.status=1 and a.id_card = '$id_card'")->select();
        Session::set('major_subject',$major_subject);
        //返回 登陆状态 用户信息 科目
        return json(['code'=>1,'msg'=>'登陆成功','data'=>$data,'major_subject'=>$major_subject]);
    }

    //实现学生修改
    public function changePassword($data){
        $username = $data['username'];
        //查询需要修改的用户
        $info = $this->where("id_card = '$username' and status = 1")->find();
        if(!$info){
            //用户不存在
            return json(['code'=>0,'msg'=>'用户不存在']);
        }
        //输入用户和原密码
        if($data['username'] == $info['id_card'] && $data['cpassword'] == $info['password']){
            //原密码正确 执行修改
            $this->where("id_card",$info['id_card'])->setField('password',$data['crepassword']);
            return json(['code'=>1,'msg'=>'修改成功']);
        }else{
            //原密码错误
            return json(['code'=>0,'msg'=>'用户或原密码错误']);
        }
    }
}