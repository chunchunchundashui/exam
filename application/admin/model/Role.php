<?php
namespace app\admin\model;
use Think\Db;
use think\Model;
/*
 * 管理员
 */
class Role extends Model{

    //获取角色下对应的权限id以及角色信息
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
            ->join('em_role_rule b', 'a.id=b.role_id')
            ->field('a.*,b.rule_id')
            ->where($where)->order('id')->paginate(20,$count);
        return $data;
    }

    //角色添加
    public function addRole($data){
        //检查角色是否可用
        $info = $this->where("role_name",$data['role_name'])->find();
        if($info){
            return false;
        }
        //添加时间
        $data['add_time'] = date("Y-m-d H:i:s");
        //删除字段rule
        unset($data['rule']);
        //insertGetId方法新增数据并返回主键值
        $id = $this->insertGetId($data);
        return $id;
    }

    //角色修改
    public function updateRole($data){
        //删除字段role
        unset($data['rule']);
        $res = $this->where("id",$data['id'])->update($data);
        return $res;
    }
}