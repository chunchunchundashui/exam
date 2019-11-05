<?php
namespace app\api\controller;
use Think\Exception;
use think\Session;
use think\Cookie;
use think\Db;
/**
 *  api 接口
 * @package app\api\controller
 */
class Index
{
    public function index()
    {
        return view('index.php');
    }

    //实现学生登陆
    public function login()
    {
        if (request()->isPost()) {
            $data = input('post.');
            $json = model('Students')->login($data);
            return $json;
        }
    }

    //实现学生修改
    public function changePassword()
    {
        if (request()->isPost()) {
            $data = input('post.');
            $json = model('Students')->changePassword($data);
            return $json;
        }
    }

    //实现登陆后选择 专业科目 点击开始考试 需要返回题
    public function getQuestion()
    {
        //获取cookie信息
        $admin = Session::get('admin');
        $data = input('get.');
        //获取专业id 来自学生信息
        $major_id = $data['major_id'];
        //获取科目id 来自学生信息
        $subject_id = $data['subject_id'];
        //获取单选题     学生信息对应固定专业   题必须对应 专业科目
        $single = Db::name('single')->field('right_key,status,major_id,subject_id,add_time', true)->where("status = 1 and major_id= $major_id and subject_id in ($subject_id)")->select()->toArray();
        //多选题
        $selection = Db::name('selection')->field('right_key,status,major_id,subject_id,add_time', true)->where("status = 1 and major_id= $major_id and subject_id in ($subject_id)")->select()->toArray();
        //判断题
        $judge = Db::name('judge')->field('right_key,status,major_id,subject_id,add_time', true)->where("status = 1 and major_id= $major_id and subject_id in ($subject_id)")->select()->toArray();
        //操作题
        $operation = Db::name('operation')->field('status,major_id,subject_id,add_time', true)->where("status = 1 and major_id= $major_id and subject_id in ($subject_id)")->select()->toArray();
        // shuffle  打乱数组
        shuffle($single);
        // array_slice  从数组中取出一段
        $single = array_slice($single,0,10);
        shuffle($selection);
        $selection = array_slice($selection,0,10);
        shuffle($judge);
        $judge = array_slice($judge,0,10);
        shuffle($operation);
        $operation = array_slice($operation,0,1);
////        //获取点击开始时 当前时间
//        $time = date('Y-m-d H:i:s');
////        //日期转换为时间戳
//        $time = strtotime($time);
//        dump($time);die;
        $id_card = $admin['id_card'];
        //获取已考试的 cookie信息 进行判断
        $exam_status = Cookie::get('exam_status');
        //返回是否考试状态  成绩库 已有成绩   判断身份证专业科目  not_read 0为未阅卷   未阅卷需返回已考试
        $exam_status_two = Db::name('topic')->where("status = 1 and not_read = 0 and id_card = '$id_card' and major_id = $major_id and subject_id = $subject_id")->find();
        if($exam_status == $admin['id_card'].'-'.$major_id.'-'.$subject_id || !empty($exam_status_two)){
            // 返回状态已经考试过了
            return json(['code' => 1, 'msg' => '开始考试', 'single' => $single,
                'selection' => $selection, 'judge' => $judge, 'operation' => $operation, 'subject_id' => $subject_id, 'exam_status' => 1]);
        }else{
            //返回状态没有考试过
            return json(['code' => 1, 'msg' => '开始考试', 'single' => $single,
                'selection' => $selection, 'judge' => $judge, 'operation' => $operation, 'subject_id' => $subject_id, 'exam_status' => 0]);
        }
        //返回是否考试状态  成绩库 已有成绩   判断身份证专业科目  not_read 0为未阅卷   未阅卷需返回已考试
//        $exam_status = Db::name('topic')->where('not_read = 0 and id_card=' . $admin['id_card'] . ' and major_id=' . $major_id . ' and subject_id=' . $subject_id)->find();
//        if ($exam_status) {
//            // 返回状态已经考试过了
//            return json(['code' => 1, 'msg' => '开始考试', 'single' => $single,
//                'selection' => $selection, 'judge' => $judge, 'operation' => $operation, 'subject_id' => $subject_id, 'exam_status' => 1]);
//        } else {
//            //返回状态没有考试过
//            return json(['code' => 1, 'msg' => '开始考试', 'single' => $single,
//                'selection' => $selection, 'judge' => $judge, 'operation' => $operation, 'subject_id' => $subject_id, 'exam_status' => 0]);
//        }
    }

    //提交试卷并评分
    public function commitQuestion()
    {
        //获取cookie信息
        $admin = Session::get('admin');
        $admin = json_decode($admin);
        //接受前端数据
        $data = input('post.');
        $subject_id = $data['subject_id'];
        //判断用户切屏作弊 完成自动交卷    error 1 为 作弊交卷  error  2 为超时交卷
        if ($data['error'] == 1) {
            $data = [
                'single' => '检测作弊，成绩不合格',
                'selection' => '检测作弊，成绩不合格',
                'judge' => '检测作弊，成绩不合格',
                'operation' => '检测作弊，成绩不合格',
                'id_card' => $admin->id_card,
                'username' => $admin->username,
                'class_name' => $admin->class_name,
                'major_id' => $admin->major_id,
                'subject_id' => $subject_id,
                'add_time' => date('Y-m-d H:i:s'),
                'scroe' => 0,
                'not_read' => 0,
                'single_scroe' => 0,
                'selection_scroe' => 0,
                'judge_scroe' => 0,
                'operation_scroe' => 0,
            ];
            //提交的数据 到数据库
            $res = Db::name('topic')->insert($data);
            if ($res) {
                //保存cookie判断已考试
                Cookie::set('exam_status',$admin->id_card.'-'.$admin->major_id.'-'.$subject_id);
                return json(['code' => '1', 'msg' => '判断作弊提交成功']);
            } else {
                return json(['code' => '0', 'msg' => '判断作弊提交失败']);
            }
        }

        //格式化json
        $data = json_decode($data["questions"]);
        //获取单选题答案
        $single_value = Db::name('single')->field('id,right_key')->where('status', 1)->select();
        foreach ($single_value as $key => $value) {
            $single[$value['id']] = $value['right_key'];
        }
        //获取多选题答案
        $selection_value = Db::name('selection')->field('id,right_key')->where('status', 1)->select();
        foreach ($selection_value as $key => $value) {
            //字符串转数组（分隔符）为了去掉 '.'号
            $str = explode(',', $value['right_key']);
            //数组转字符串
            $str = implode('', $str);
            //字符串转数组 （方便排序）
            $arr = str_split($str);
            //字母排序 降序
            asort($arr);
            //数组转字符串
            $str = implode('', $arr);
            $selection[$value['id']] = $str;
        }
        //获取判断题答案
        $judge_value = Db::name('judge')->field('id,right_key')->where('status', 1)->select();
        foreach ($judge_value as $key => $value) {
            $judge[$value['id']] = $value['right_key'];
        }
        //循环提交的答案
        foreach ($data as $key => $value) {
            $id = $data[$key]->id; //提交的题号
            $right_key = isset($data[$key]->answer) ? $data[$key]->answer : '空';  //提交的答案
            //判断题型
            switch ($data[$key]->type) {
                case 1:   //判断题   拼接提交答案
                    $answer_judge[$id] = $right_key;
                    break;
                case 2:   //单选题  拼接提交答案
                    $answer_single[$id] = $right_key;
                    break;
                case 3:   //多选题  拼接提交答案 （转数组）
                    //为空时传空
                    if (!$right_key) {
                        $answer_selection[$id] = '空';
                    } else {
                        //数组转字符串
                        $str = implode('', $right_key);
                        //字符串转数组 （方便排序）
                        $arr = str_split($str);
                        //字母排序 降序
                        asort($arr);
                        //数组转字符串
                        $str = implode('', $arr);
                        $answer_selection[$id] = $str;
                    }
                    break;
                case 4:   //操作题  提交答案
                    $answer_operation[$id] = '题目：  '.$data[$key]->title . '    答案：  ' .$right_key;
                    //保存操作题 题目
                    break;
            }
        }

        //判断分数(答对题数)
        $judge_count = count(array_intersect_assoc($judge, $answer_judge));
        $single_count = count(array_intersect_assoc($single, $answer_single));
        $selection_count = count(array_intersect_assoc($selection, $answer_selection));
        //总分
        $count = $judge_count * 3 + $single_count * 3 + $selection_count * 3;
        //拼接提交答案数据
        foreach ($answer_judge as $key => $value) {
            $commit1[] = 'judge' . $key . '-' . $value;
            $commit_judge = implode(',', $commit1);
        }
        foreach ($answer_single as $key => $value) {
            $commit2[] = 'single' . $key . '-' . $value;
            $commit_single = implode(',', $commit2);
        }
        foreach ($answer_selection as $key => $value) {
            $commit3[] = 'selection' . $key . '-' . $value;
            $commit_selection = implode(',', $commit3);
        }
        foreach ($answer_operation as $key => $value) {
            $commit4[] = 'operation' . $key . '-' . $value;
            $commit_operation = implode(',', $commit4);
        }
        //获取文件保存路径
        $savename = Cookie::get('savename');
        $savename = isset($savename)?$savename:'';
        $data = [
            'single' => $commit_single,
            'selection' => $commit_selection,
            'judge' => $commit_judge,
            'operation' => $commit_operation,
            'id_card' => $admin->id_card,
            'username' => $admin->username,
            'class_name' => $admin->class_name,
            'major_id' => $admin->major_id,
            'subject_id' => $subject_id,
            'add_time' => date('Y-m-d H:i:s'),
            'scroe' => $count,
            'not_read' => 0,
            'single_scroe' => $single_count*3,
            'selection_scroe' => $selection_count*3,
            'judge_scroe' => $judge_count*3,
            'operation_scroe' => 0,
            'pathinfo' => $savename
        ];
        //清空上传重复状态
        Cookie::clear('upload_savename');
        //清空上传文件路径
        Cookie::clear('savename');
        //提交的数据 到数据库
        $res = Db::name('topic')->insert($data);
        if ($res) {
            //保存cookie判断已考试
            Cookie::set('exam_status',$admin->id_card.'-'.$admin->major_id.'-'.$subject_id);
            return json(['code' => '1', 'msg' => '提交成功']);
        } else {
            return json(['code' => '0', 'msg' => '提交失败']);
        }
    }

    //返回成绩api
    public function getGrade(){
        $id_card = input('get.id_card');
        $data = Db::name('topic')->alias('a')->field('a.scroe,a.single_scroe,a.selection_scroe,a.judge_scroe,a.operation_scroe,a.not_read,b.major_name,c.subject_name')
            ->join('em_major b','a.major_id=b.id')
            ->join('em_subject c','a.subject_id=c.id')
            ->where("a.status = 1 and a.id_card = '$id_card'")->select();
        if($data){
            return json(['code'=>1,'msg'=>'查询成功','scroe'=>$data]);
        }else{
            return json(['code'=>0,'msg'=>'查询失败']);
        }
    }

    //返回session信息
    public function getUserinfo(){
        //获取session数据
        $admin = Session::get('admin');
        $major_subject = Session::get('major_subject');
        return json(['admin'=>$admin,'major_subject'=>$major_subject]);
    }

    public function answer(){
        return view("index.html");
    }
    public function commit(){
        return view("index.html");
    }
    public function score(){
        return view("index.html");
    }

    //上传提题库
    public function upload(){
        //获取表单上传文件
        $file = request()->file('file');
        if($file){
            //获取session信息
            $admin = Session::get('admin');
            $admin = json_decode($admin);
            $id_card = $admin->id_card;
            //获取上传文件状态
            $upload_savename = Cookie::get('upload_savename');
            if(!empty($upload_savename)){
                //取出 cookie中的  id_card 判断重复提交  删除包含所有文件的目录
                unlink(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload'. DS . $id_card .DS .$upload_savename);
//                //判断php系统环境
//                if(PHP_OS == 'WINNT'){
//                    //windows删除
//                    system("rmdir ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload'. DS . $id_card .DS .$upload_savename) . " /s /q");
//                }else{
//                    //linux删除
//                    system("rm -rf ".escapeshellarg(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload' . DS . $id_card .DS .$upload_savename));
//                }
            }
            // 移动到框架应用根目录/public/uploads/ 目录下
            $info = $file->move(ROOT_PATH . 'public' . DS .'uploads' . DS .'operation_upload' . DS . $id_card);
            if($info){
                //保存文件上传路径  用于提交成绩表的文件路径
                Cookie::set('savename','public/uploads' . DS . 'operation_upload' . DS . $id_card . DS . $info->getSaveName());
                //上传文件状态 判断重复上传
                Cookie::set('upload_savename',$info->getSaveName());
                return json(['code'=>1,'msg'=>'上传成功']);
            }else{
                return json(['code'=>0,'msg'=>'上传失败']);
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
