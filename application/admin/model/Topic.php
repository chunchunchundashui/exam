<?php
namespace app\admin\model;
use think\Model;
class Topic extends Model{

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
        //接受班级查询
        $class_name = input('get.class_name');
        if ($class_name){
            $count_where .= " and class_name like '%$class_name%'";
            $where .= " and a.class_name like '%$class_name%'";
        }
        //接受学生姓名查询
        $username = input('get.username');
        if ($username){
            $count_where .= " and username like '%$username%'";
            $where .= " and a.username like '%$username%'";
        }
        //接受专业查询
        $major_id = input('get.major_id');
        if ($major_id){
            $count_where .= " and major_id=$major_id";
            $where .= " and a.major_id=$major_id";
        }
        //接受科目查询
        $subject_id = input('get.subject_id');
        if ($subject_id){
            $count_where .= " and subject_id=$subject_id";
            $where .= " and a.subject_id=$subject_id";
        }
        $count = $this->where($count_where)->count();
        //链表查询出专业科目 and 成绩
        $data = $this->alias('a')->field('a.*,b.major_name,c.subject_name')
            ->join('em_major b','a.major_id=b.id')
            ->join('em_subject c','a.subject_id=c.id')->where($where)->order('id')->paginate(20,$count,[
                'query'     => array('start'=>$start,'end'=>$end,'username'=>$username,'class_name'=>$class_name,
                    'major_id'=>$major_id,'subject_id'=>$subject_id)
            ]);
        return $data;
    }

    public function getOfficeData($status){
        //拼接where
        $count_where = 'status='.$status.' and not_read in (1,2)';
        $where = 'a.status='.$status.' and not_read in (1,2)';
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
        //接受班级查询
        $class_name = input('get.class_name');
        if ($class_name){
            $count_where .= " and class_name like '%$class_name%'";
            $where .= " and a.class_name like '%$class_name%'";
        }
        //接受学生姓名查询
        $username = input('get.username');
        if ($username){
            $count_where .= " and username like '%$username%'";
            $where .= " and a.username like '%$username%'";
        }
        //接受专业查询
        $major_id = input('get.major_id');
        if ($major_id){
            $count_where .= " and major_id=$major_id";
            $where .= " and a.major_id=$major_id";
        }
        //接受科目查询
        $subject_id = input('get.subject_id');
        if ($subject_id){
            $count_where .= " and subject_id=$subject_id";
            $where .= " and a.subject_id=$subject_id";
        }
        $count = $this->where($count_where)->count();
        //链表查询出专业科目 and 成绩
        $data = $this->alias('a')->field('a.*,b.major_name,c.subject_name')
            ->join('em_major b','a.major_id=b.id')
            ->join('em_subject c','a.subject_id=c.id')->where($where)->order('id')->paginate(20,$count,[
                'query'     => array('start'=>$start,'end'=>$end,'username'=>$username,'class_name'=>$class_name,
                    'major_id'=>$major_id,'subject_id'=>$subject_id)
            ]);
        return $data;
    }
}