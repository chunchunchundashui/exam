<?php
namespace app\admin\model;
use think\Model;
class Subject extends Model{

    //获取科目下对应的专业信息
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
        //接受专业查询
        $major_id = input('get.major_id');
        if ($major_id){
            $count_where .= " and major_id = $major_id";
            $where .= " and a.major_id = $major_id";
        }
        //接受科目查询
        $subject_id = input('get.subject_id');
        if ($subject_id){
            $count_where .= " and id = $subject_id";
            $where .= " and a.id = $subject_id";
        }
        $count = $this->where($count_where)->count();
        $data = $this->alias('a')->
        join('em_major b', 'a.major_id=b.id')
            ->field('a.*,b.major_name')
            ->where($where)->order('id')->paginate(20,$count,[
                'query'     => array('start'=>$start,'end'=>$end,'major_id'=>$major_id,'subject_id'=>$subject_id)
            ]);
        return $data;
    }
}