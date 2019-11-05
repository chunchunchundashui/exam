<?php
namespace app\admin\model;

use think\Model;

class Students extends Model {
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
        //接受身份证查询
        $id_card = input('get.id_card');
        if ($id_card){
            $count_where .= " and id_card like '%$id_card%'";
            $where .= " and a.id_card like '%$id_card%'";
        }
        //接受电话号码查询
        $tel = input('get.tel');
        if ($tel){
            $count_where .= " and tel like '%$tel%'";
            $where .= " and a.tel like '%$tel%'";
        }
        //接受班级查询
        $class_name = input('get.class_name');
        if ($class_name){
            $count_where .= " and class_name like '%$class_name%'";
            $where .= " and a.class_name like '%$class_name%'";
        }
        //接受班主任查询
        $class_teacher = input('get.class_teacher');
        if ($class_teacher){
            $count_where .= " and class_teacher like '%$class_teacher%'";
            $where .= " and a.class_teacher like '%$class_teacher%'";
        }

        $count = $this->where($count_where)->count();
        $data = $this->alias('a')->field('a.*,b.major_name')
            ->join('em_major b','a.major_id=b.id')
            ->where($where)->order('id')->paginate(20,$count ,[
                'query'     => array('start'=>$start,'end'=>$end,
                    'username'=>$username,'major_id'=>$major_id,'id_card'=>$id_card,
                    'tel'=>$tel,'class_name'=>$class_name,'class_teacher'=>$class_teacher)
            ]);
        return $data;
//        $model = Db::name('students');
//        //获取数据总条数 实现分页
//        $count = $model->where("status",1)->count();
//        $data = $model->alias('a')->field('a.*,b.major_name')
//            ->join('em_major b','a.major_id=b.id')->where("a.status",1)->order('id')->paginate(20,$count);
//        $this->assign('data',$data);
    }
}