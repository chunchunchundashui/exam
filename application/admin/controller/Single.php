<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;

/*
 * 单选题
 */
class Single extends Common
{

    //单选题页面
    public function index()
    {
        //获取单选题下对应的专业和科目信息
        $data = model('single')->getAllData(1);
        $this->assign('data',$data);
        //获取专业信息
        $major = db('major')->where("status",1)->select();
        $this->assign('major',$major);
        //获取科目信息
        $subject = db('subject')->where("status",1)->select();
        $this->assign('subject',$subject);
        return $this->fetch();
    }

    //单选题添加
    public function add(){
        if (request()->isPost()) {
            $model = Db::name('single');
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

    //单选题修改
    public function edit(){
        if(request()->isPost()){
            $model = Db::name('single');
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
            $model = Db::name('single');
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

    //单选题的删除
    public function del(){
        $model = Db::name('single');
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

    //单选题回收站
    public function trash(){
        //获取单选题下对应的专业和科目信息
        $data = model('single')->getAllData(0);
        $this->assign('data',$data);
        return $this->fetch();
    }

    //单选题回收站单选题的恢复
    public function recover(){
        $model = Db::name('single');
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

    //单选题回收站单选题彻底删除
    public function remove(){
        $model = Db::name('single');
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
        action('admin/Excel/impUser',['table_name'=>'em_single']);
    }

    //导出题
    public function expData(){
        action('admin/Download/out',['table_name'=>'em_single']);
    }

    //导入题库
//    public function import(){
////        if(request()->isPost()){
////            $file = request()->file('excel');
////            // 移动到框架应用根目录/public/uploads/ 目录下
////            $info = $file->move(ROOT_PATH . 'public' .DS.'uploads'. DS . 'excel');
////            if($info){
////                //获取文件所在目录名
////                $path=ROOT_PATH . 'public' . DS.'uploads'.DS .'excel/'.$info->getSaveName();
////                //加载PHPExcel类
////                vendor("PHPExcel.PHPExcel");
////                $extension = strtolower( pathinfo($_FILES ['excel'] ['name'], PATHINFO_EXTENSION) );
////
////                if ($extension =='xlsx') {
////                    $objReader = new \PHPExcel_Reader_Excel2007();
////                } else if ($extension =='xls') {
////                    $objReader = new \PHPExcel_Reader_Excel5();
////                } else if ($extension=='csv') {
////                    $PHPReader = new \PHPExcel_Reader_CSV();
////
////                    //默认输入字符集
////                    $PHPReader->setInputEncoding('GBK');
////
////                    //默认的分隔符
////                    $PHPReader->setDelimiter(',');
////
////                }
////
////                //载入文件
////                $objPHPExcel = $objReader->load($path,$encode='utf-8');
////                $sheet = $objPHPExcel ->getSheet(0);
////                //实例化PHPExcel类（注意：实例化的时候前面需要加'\'）
//////                $objReader=new \PHPExcel_Reader_Excel5();
//////                $objPHPExcel = $objReader->load($path,$encode='utf-8');//获取excel文件
//////                $sheet = $objPHPExcel->getSheet(0); //激活当前的表
////                $highestRow = $sheet->getHighestRow(); // 取得总行数
////                $highestColumn = $sheet->getHighestColumn(); // 取得总列数
////                $a=0;
////                //将表格里面的数据循环到数组中
////                for($i=2;$i<=$highestRow;$i++)
////                {
////                    //*为什么$i=2? (因为Excel表格第一行应该是姓名，年龄，班级，从第二行开始，才是我们要的数据。)
////                    $data[$a]['name'] = $objPHPExcel->getActiveSheet()->getCell("A".$i)->getValue();//姓名
////                    $data[$a]['A'] = $objPHPExcel->getActiveSheet()->getCell("B".$i)->getValue();//年龄
////                    $data[$a]['B'] = $objPHPExcel->getActiveSheet()->getCell("C".$i)->getValue();//班级
////                    $data[$a]['C'] = $objPHPExcel->getActiveSheet()->getCell("D".$i)->getValue();//班级
////                    $data[$a]['D'] = $objPHPExcel->getActiveSheet()->getCell("E".$i)->getValue();//班级
////                    $data[$a]['right_key'] = $objPHPExcel->getActiveSheet()->getCell("F".$i)->getValue();//班级
////                    // 这里的数据根据自己表格里面有多少个字段自行决定
////                    $a++;
////                }
////                //往数据库添加数据
////                $res = Db::name('single')->insertAll($data);
////                if($res){
////                    $this->success('操作成功！');
////                }else{
////                    $this->error('操作失败！');
////                }
////            }else{
////                // 上传失败获取错误信息
////                $this->error($file->getError());
////            }
////        }
////        if(request() -> isPost()) {
////            $major_id = input('post.major_id');
////            $subject_id = input('post.subject_id');
////            vendor("PHPExcel.PHPExcel"); //方法一
////            $objPHPExcel =new \PHPExcel();
////            //获取表单上传文件
////            $file = request()->file('file');
////            $info = $file->validate(['ext' => 'xlsx,xls'])->move(ROOT_PATH . 'public' . DS .'uploads' . DS . 'excel');  //上传验证后缀名,以及上传之后移动的地址  E:\wamp\www\bick\public
////            if($info)
////            {
////                $exclePath = $info->getSaveName();  //获取文件名
////                $file_name = ROOT_PATH . 'public' . DS .'uploads' . DS . 'excel' . DS . $exclePath;//上传文件的地址
////                $file_types = explode ( ".", $_FILES ['file'] ['name'] );
////                $file_type = $file_types [count ( $file_types ) - 1];
////                if($file_type=='xls'){
////                    $objReader =\PHPExcel_IOFactory::createReader("Excel5");
////                }
////                else if($file_type=='xlsx'){
////                    $objReader =\PHPExcel_IOFactory::createReader("Excel2007");
////                }
////                $obj_PHPExcel =$objReader->load($file_name, $encode = 'utf-8');  //加载文件内容,编码utf-8
////                $excel_array=$obj_PHPExcel->getSheet(0)->toArray();   //转换为数组格式
////                array_shift($excel_array);  //删除第一个数组(标题);
////                array_shift($excel_array);  //删除第一个数组(标题);
////                $data = [];
////                $i=0;
////                foreach($excel_array as $k=>$v) {
////                    $data[$k]['single_name'] = $v[0];
////                    $data[$k]['A'] = $v[1];
////                    $data[$k]['B'] = $v[2];
////                    $data[$k]['C'] = $v[3];
////                    $data[$k]['D'] = $v[4];
////                    $data[$k]['right_key'] = $v[5];
////                    $data[$k]['status'] = 1;
////                    $data[$k]['major_id'] = $major_id;
////                    $data[$k]['subject_id'] = $subject_id;
////                    $data[$k]['add_time'] = date('Y-m-d H:i:s');
////                    $i++;
////                }
////                $re= Db::name("single")->insertAll($data);
////                if($re){
////                    $msg=[
////                        'code'=>1,
////                        'msg'=>'已获取信息',
////                    ];
////                    return json_encode($msg);
////                }
////                else{
////                    $msg=[
////                        'code'=>0,
////                        'msg'=>'获取信息失败',
////                    ];
////                    return json_encode($msg);
////                }
////            }else
////            {
////                echo $file->getError();
////            }
////        }
//        return $this->fetch('index');
//    }

    //    //导入题
//    public function excel(){
//        //dump($_FILES);die;
//        $table_name = input('get.name');
//        //调用Excel控制器
//        action('admin/Excel/impUser',['table_name'=>$table_name]);
//    }

    //文件导出
//    public function export()
//    {
//        //1.从数据库中取出数据
//        $list = Db::name('single')->select()->toArray();
//        //halt($list);
//        //2.加载PHPExcle类库
//        vendor('PHPExcel.PHPExcel');
//        //3.实例化PHPExcel类
//        $objPHPExcel = new \PHPExcel();
//        //4.激活当前的sheet表
//        $objPHPExcel->setActiveSheetIndex(0);
//        //5.设置表格头（即excel表格的第一行）
//        $objPHPExcel->setActiveSheetIndex(0)
//            ->setCellValue('A1', 'ID')
//            ->setCellValue('B1', '题目')
//            ->setCellValue('C1', 'A选项')
//            ->setCellValue('D1', 'B选项')
//            ->setCellValue('E1', 'C选项')
//            ->setCellValue('F1', 'D选项')
//            ->setCellValue('G1', '答案');
//        //设置A列水平居中
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('A')->getAlignment();
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('B')->getAlignment();
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('C')->getAlignment();
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('D')->getAlignment();
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('E')->getAlignment();
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle('F')->getAlignment()
//            ->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//        //设置单元格宽度
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('A')->setWidth(30);
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('B')->setWidth(30);
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('C')->setWidth(30);
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('D')->setWidth(30);
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('E')->setWidth(30);
//        $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension('F')->setWidth(30);
//        //6.循环刚取出来的数组，将数据逐一添加到excel表格。
//        for($i=0;$i<count($list);$i++){
//            $objPHPExcel->getActiveSheet()->setCellValue('A'.($i+2),$list[$i]['id']);
//            $objPHPExcel->getActiveSheet()->setCellValue('B'.($i+2),$list[$i]['name']);
//            $objPHPExcel->getActiveSheet()->setCellValue('C'.($i+2),$list[$i]['A']);
//            $objPHPExcel->getActiveSheet()->setCellValue('D'.($i+2),$list[$i]['B']);
//            $objPHPExcel->getActiveSheet()->setCellValue('E'.($i+2),$list[$i]['C']);
//            $objPHPExcel->getActiveSheet()->setCellValue('F'.($i+2),$list[$i]['D']);
//            $objPHPExcel->getActiveSheet()->setCellValue('G'.($i+2),$list[$i]['right_key']);
//        }
//        //7.设置保存的Excel表格名称
//        $filename = '单选题'.date('ymd',time()).'.xls';
//        //8.设置当前激活的sheet表格名称；
//        $objPHPExcel->getActiveSheet()->setTitle('单选题');
//        //9.设置浏览器窗口下载表格
//        header("Content-Type: application/force-download");
//        header("Content-Type: application/octet-stream");
//        header("Content-Type: application/download");
//        header('Content-Disposition:inline;filename="'.$filename.'"');
//        //生成excel文件
//        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
//        //下载文件在浏览器窗口
//        $objWriter->save('php://output');
//        exit;
//    }
}