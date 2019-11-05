<?php
namespace app\admin\model;
use Think\Db;
use think\Model;
use think\Cookie;
/*
 * 管理员
 */
class Admin extends Model{

    //获取管理员下对应的角色id以及管理员信息
    public function getAllData($status){
        //拼接where
        $count_where = 'status='.$status;
        $where = 'a.status='.$status;
        //接受开始日
        $start = input('get.start');
        //日期转换为时间戳
        $start = strtotime($start);
        if ($start){
            $count_where .= " and unix_timestamp(add_time)>$start";
            $where .= " and unix_timestamp(a.add_time)>$start";
        }
        //接受结束日
        $end = input('get.end');
        //日期转换为时间戳
        $end = strtotime($end);
        if ($end){
            $count_where .= " and unix_timestamp(add_time)<$end";
            $where .= " and unix_timestamp(a.add_time)<$end";
        }
        $count = $this->where($count_where)->count();
        $data = $this->alias('a')
            ->join('em_admin_role b', 'a.id=b.admin_id')
            ->field('a.*,b.role_id')
            ->where($where)->order('id')->paginate(20,$count);
        return $data;
    }

    //管理员添加
    public function addAdmin($data){
        //检查管理员是否可用
        $info = $this->where("username",$data['username'])->find();
        if($info){
            return false;
        }
        //添加时间
        $data['add_time'] = date("Y-m-d H:i:s");
        //删除字段role
        unset($data['role']);
//        $data['password'] = md5($data['password']);
        //insertGetId方法新增数据并返回主键值
        $id = $this->insertGetId($data);
        return $id;
    }

    //管理员修改
    public function updateAdmin($data){
        //删除字段role
        unset($data['role']);
        $res = $this->where("id",$data['id'])->update($data);
        return $res;
    }

    //实现管理员登陆
    public function login($data){
        //检查用户名是否存在
        $info = $this->where("username",$data['username'])->find();
        if(!$info){
            //用户不存在
            return json(array('status'=>0,'msg'=>'用户名不存在'));
        }
        $rule = Db::name('admin_role')->field('role_id')->where('admin_id',$info['id'])->find();
        //判断用户是否被禁用   超级管理员不判断
        if($info['status'] == 0 && $rule['role_id'] != 1 && $info['on_off'] == 0){
            return json(array('status'=>0,'msg'=>'用户被禁用'));
        }
        if($data['password'] != $info['password']){
            //密码错误
            return json(array('status'=>0,'msg'=>'密码错误'));
        }
        //保存用户信息是正确的可以登录  保存用户信息
        Cookie::set('admin',$info,18000);
        //保存管理员名
        Cookie::set('username',$info['username'],18000);
        //保存管理员id
        Cookie::set('id',$info['id'],18000);
        //保存最后登录时间
        $time = date('Y-m-d H:i:s');
        $this->where('id',$info['id'])->setField('login_time',$time);
        //保存最后登录ip
        $ip = request()->ip();
        $this->where('id',$info['id'])->setField('login_ip',$ip);
        //保存ip真实地址
        $IpLocation = new \think\ipLocation\IpLocation();
        $site = $IpLocation->getlocation($ip);
        $site['country']=iconv('gb2312', 'utf-8', $site['country']);
        $site['area']=iconv('gb2312', 'utf-8', $site['area']);
        $this->where('id',$info['id'])->setField('login_site',$site['country'].$site['area']);
        return json(array('status'=>1,'msg'=>'登陆成功'));
    }
}