<?php
/**
 * Created by PhpStorm.
 * User: dongshao
 * Date: 2019/4/10
 * Time: 10:54
 */

namespace app\admin\controller;

use think\Controller;
use think\Db;

class Excel extends Controller
{
    /*
     * 导出表格
     */
//    public function expData($table_name=""){
//        //获取表注释
//
//        $sql = "select TABLE_COMMENT from information_schema.TABLES where TABLE_NAME='".$table_name."'
//            and TABLE_SCHEMA='".('exam1')."'";
//        $table_name = mb_substr($table_name,3, 10);     //tp5字符串截取
//        $table_notes = model($table_name)->query($sql);
//        $xlsName  = "{$table_notes[0]['TABLE_COMMENT']}学生表";
//
//        //获取每个字段的注释
//        $sql =" show full fields from ".'em_'.$table_name;
//
//        $fileds = model($table_name)->query($sql); //$fields中存放着每一个字段的信息
//
//        $xlsCells = array();
//        foreach ($fileds as $filed){
//          /*  dump($filed);
//            dump($filed['Field']);
//            dump($filed['Comment'],'@'); die;*/
//            $xlsCells[$filed['Field']] = $filed['Comment'];
//
//        }
//        $xlsCell = array();
//        $i = 0;
//        foreach ($xlsCells as $k=>$v){
//            $xlsCell[$i][] = strtolower($k);  //将键转成小写,由于有选择题中有a,因为a在tp框架中是方法名所以不能使用a改为大写A
//            $xlsCell[$i][] = $v;
//            $i++;
//        }
//        //查询数据表中的数据,由于每个表不相同,所有调用每个model中的方法进行查询
//        $xlsModel =  model($table_name);
//
//        $xlsData  = $xlsModel->select();
//
//
//
//        foreach ($xlsData as $k => $v)
//        {
//            if(!empty($xlsData[$k]['last_login_time'])){
//                $xlsData[$k]['last_login_time'] = date("Y-m-d H:i:s", $v['last_login_time']);
//            }
//            $xlsData[$k]['status'] = 1 ? '是':'否';
//
////            $xlsData[$k]['add_time'] = date("Y-m-d H:i:s", $v['add_time']);
//            $xlsData[$k]['add_time'] = $v['add_time'];
//
//        }
////        dump($xlsCell);
////        dump($xlsData);die;
//        //调用调出功能
//        $this->exportExcel($xlsName,$xlsCell,$xlsData);
//    }
//    //导出操作
//    /*
//     * $expTitle:表名
//     * $expCellName:列名
//     * $expTableData:数据
//     */
//    public function exportExcel($expTitle='',$expCellName='',$expTableData=''){
//        //var_dump($expTitle);
//        //var_dump($expCellName);
//
//        $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);//文件名称
//
//        $fileName = $expTitle.date('_Ymd_His');//or $xlsTitle 文件名称可根据自己情况设定
//
//        $cellNum = count($expCellName);
//        $dataNum = count($expTableData);
//        vendor("PHPExcel.PHPExcel");
//        $objPHPExcel = new \PHPExcel();

//        $cellName = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ');
//
//        $objPHPExcel->getActiveSheet(0)->mergeCells('A1:'.$cellName[$cellNum-1].'1');//合并单元格
//        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', $expTitle.'  Export time:'.date('Y-m-d H:i:s'));//第一行标题
//        for($i=0;$i<$cellNum;$i++){
//            $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i].'2', $expCellName[$i][1]);
//        }
//
//        // Miscellaneous glyphs, UTF-8
//        for($i=0;$i<$dataNum;$i++){
//
//            for($j=0;$j<$cellNum;$j++){
//
//                $objPHPExcel->getActiveSheet(0)->setCellValue($cellName[$j].($i+3), $expTableData[$i][$expCellName[$j][0]]);
//
//            }
//
//        }
//        header('pragma:public');
//
//        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="'.$xlsTitle.'.xls"');
//        header("Content-Disposition:attachment;filename=$fileName.xls");//attachment新窗口打印inline本窗口打印
//        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
//
//        $objWriter->save('php://output');
//        exit;

//        $cellName = array('A','B', 'C','D', 'E', 'F','G','H','I', 'J', 'K','L','M', 'N', 'O', 'P', 'Q','R','S', 'T','U','V', 'W', 'X','Y', 'Z', 'AA',
//            'AB', 'AC','AD','AE', 'AF','AG','AH','AI', 'AJ', 'AK', 'AL','AM','AN','AO','AP','AQ','AR', 'AS', 'AT','AU', 'AV','AW', 'AX',
//            'AY', 'AZ');
//        //设置头部导出时间备注
//        $objPHPExcel->getActiveSheet(0)->mergeCells('A1:' . $cellName[$cellNum - 1] . '1');//合并单元格
//        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', $expTitle . ' 导出时间:' . date('Y-m-d H:i:s'));
//        //设置列名称
//        for ($i = 0; $i < $cellNum; $i++) {
//            $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i] . '2', $expCellName[$i][1]);
//        }
//
//        //赋值
//        for ($i = 0; $i < $dataNum; $i++) {
//
//            for ($j = 0; $j < $cellNum; $j++) {
//
//                $objPHPExcel->getActiveSheet(0)->setCellValue(
//
//                $cellName[$j] . ($i + 3), $expTableData[$i][$expCellName[$j][0]]
//
//                );
////                dump(123);die;
//            }
//
//
//        }
//        ob_end_clean();//这一步非常关键，用来清除缓冲区防止导出的excel乱码
//        header('pragma:public');
//        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="' . $xlsTitle . '.xls"');
//        header("Content-Disposition:attachment;filename=$fileName.xls");//"xls"参考下一条备注
//        $objWriter = \PHPExcel_IOFactory::createWriter(
//            $objPHPExcel, 'Excel5'
//        );//"Excel2007"生成2007版本的xlsx，"Excel5"生成2003版本的xls
//        $objWriter->save('php://output');
//
//    }
    /**
     * 导入操作
     * @param string $table_name : 表名:用于指定导入那个表
     */
    public function impUser($table_name='')
    {

        if (!empty($_FILES['name']['name'])) {

            $file_types = explode(".", $_FILES ['name'] ['name']);

            $exts = $file_types [count($file_types) - 1];

            /*判别是不是.xls文件，判别是不是excel文件*/
            //xls != "xlsx"  ||  xls!= "xls"
            if (strtolower($exts) == "xlsx" || strtolower($exts) == "xls") {
                // 生成唯一的ID

//                $filename = md5(uniqid(microtime(true), true));

//                $config = array('maxSize' => 70000000,
//                    'exts' => array('xlsx', 'xls'),
//                    'rootPath' => './Uploads/excel/',
//                    //保存的文件名
//                    'saveName' => $filename,
//                    //开启子目录
//                    'subName' => array('date', 'Ymd'),
//                );
                //创建上传文件对象,并且将文件移动到指定的地方,
                //$info返回上传文件的新路径
                // 获取表单上传文件 例如上传了001.jpg
                $file = request()->file('name');

                // 移动到框架应用根目录/public/uploads/ 目录下
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'excel');
//                dump($info  );die;

                if ($info) {
                    vendor("PHPExcel.PHPExcel");
//                dump($info->getfilename());die;

                    $file_name = ROOT_PATH . 'public' . DS .'uploads' . DS . 'excel' . DS . $info->getSaveName();//上传文件的地址;    /*  . $info->getInfo()['type']*/
                    //判断文件是什么格式

                    $type = pathinfo($file_name);
                    $type = strtolower($type["extension"]);
                    if ($type=='xlsx') {
                        $type='Excel2007';
                    }elseif($type=='xls') {
                        $type = 'Excel5';
                    }
                    $objReader = \PHPExcel_IOFactory::createReader($type);

                    $objReader ->setReadDataOnly(true);    //只读取数据,会智能忽略所有空白行,这点很重要！！
                    $objPHPExcel = $objReader->load($file_name); //加载Excel文件

                    $sheetCount = $objPHPExcel->getSheetCount();//获取sheet工作表总个数

                    $rowData = array();
                    $RowNum = 0;
                    /*读取表格数据*/
                    for($i =0;$i <= $sheetCount-1;$i++) {//循环sheet工作表的总个数
                        $sheet = $objPHPExcel->getSheet($i);
                        $highestRow = $sheet->getHighestRow();
                        $RowNum += $highestRow - 1;//计算所有sheet的总行数
                        $highestColumn = $sheet->getHighestColumn();
                        //从第$i个sheet的第1行开始获取数据
                        for ($row = 1; $row <= $highestRow; $row++) {
                            //dump('A' . $row . ':' . $highestColumn . $row);
                            //把每个sheet作为一个新的数组元素 键名以sheet的索引命名 利于后期数组的提取
                            $rowData[$i][] = $this->arrToOne($sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE));
                        }
                    }
                    /*删除每行表头数据*/
//                    foreach($rowData as $k=>$v){
//                        array_shift($rowData[$k]);
//                    }

                    $this->inData($rowData,$table_name);



                    /*
                     * 以下代码只能导入单个sheet工作区的内容
                     *
                     */
//                    $objPHPExcel = $objReader->load($file_name, $encode = 'utf-8');
//                        $sheet = $objPHPExcel->getSheet(0);
//                        $sheetCount = $objPHPExcel->getSheetCount();  //读取sheet工作区域个数
//                        $highestRow = $sheet->getHighestRow(); // 取得总行数55
//                        $highestColumn = $sheet->getHighestColumn(); // 取得总列数
//
//                    for ($i = 3; $i <= $highestRow; $i++) {
//                            //循环列
//                            for($colIndex='A';$colIndex<=$highestColumn;$colIndex++){
//                                $cell = $objPHPExcel->getActiveSheet()->getCell($colIndex . $i)->getValue();
//                                if(empty($cell)){ continue; }
//                                if(is_object($cell)){
//                                    //符文本转换字符串
//                                    $cell = $cell->__toString();
//                                }
//                                $data[$i][$colIndex] = htmlspecialchars($cell);
//                            }

                }

            } else {
                $this->error("请选择上传的文件");
            }

        }
        $this->error('不是Excel文件，重新上传');
    }
    /*
     * 导入数据表的功能代码
     */
    public function inData($datas,$table_name){

        $judge =  array();     //判断
        $selection = array();  //多选
        $single = array();     //单选
        $other = array();     //其他导入excel内容

//        $table_name = mb_substr($table_name,3, 10);     //tp5字符串截取
        if(count($datas) != 1){

            //将单选,多选和判断题分别单独取出存放在指定的数组中
            for ($i=0;$i<count($datas);$i++){
                if($datas[$i][0][0] == '单选' || $datas[$i][0][0] == '单选题'){
                    $insert_datas = $this->merge($datas[$i],'single');
                    $result = $this->inert_data($insert_datas,'single');

                }elseif ($datas[$i][0][0] == '多选' || $datas[$i][0][0] == '多选题'){
                    $insert_datas = $this->merge($datas[$i],'selection');

                    $result = $this->inert_data($insert_datas,'selection');

                }elseif ($datas[$i][0][0] == '判断' || $datas[$i][0][0] == '判断题'){
                    $insert_datas = $this->merge($datas[$i],'judge');

                    $result = $this->inert_data($insert_datas,'judge');

                }elseif ($datas[$i][0][0] == '操作' || $datas[$i][0][0] == '操作题'){
                    $insert_datas = $this->merge($datas[$i],'operation');

                    $result = $this->inert_data($insert_datas,'operation');

                }
            }

            if($result){
                $this->success("导入成功");exit;
            }else{
                $this->error("导入失败");exit;
            }
        }else{

            $other = $datas[0];
            $table_name = mb_substr($table_name,3, 10);     //tp5字符串截取
            $insert_datas = $this->merge($other,$table_name);
//dump(123);die;
            $result = $this->inert_data($insert_datas,$table_name);
            if($result){
                $this->success("导入成功");exit;
            }else{
                $this->error("导入失败");exit;
            }
        }

    }
    /*
     * 根据表字段合并
     * 合并数组,将表的字段变成键,将导入的数据变成值
     */
    private function merge($other,$table_name){
        foreach ($other as $k=>&$v){
            $v = array_map(function($aa){return trim($aa); },$v);
        }
        //2019年10月31日22:27:05
        //提交表 admin 去字段
        if($table_name == 'admin'){
            $arr_continue = array('id','add_time','on_off','login_site');
        }

        $arr_continue = array('id','major_id','add_time','status','subject_id','pathinfo');

        $sql =" show full fields from ".'em_'.$table_name;

//        $table_name = mb_substr($table_name,3, 10);     //tp5字符串截取

        $fields = model($table_name)->query($sql); //$fields中存放着每一个字段的信息

        $arr = array();
        foreach ($fields as $Field){

            if(in_array($Field['Field'],$arr_continue)){ continue;  }
            $arr[] = $Field['Field'];
        }
        //合并数组,将表的字段变成键,将导入的数据变成值
        $insert_datas = array();

//        dump($other);
//        dump($arr);
//        die;
        $s = 1;

//        dump($other);
        foreach ($other as $key => $value){
            //创建一个数组，用一个数组的值作为其键名，另一个数组的值作为其值
            @$insert_datas[] = array_combine($arr,$value);

            //跳过导入表格的第一行和第二行
            if($s<=2){   array_shift($insert_datas); }
            $s++;
        }

        return $insert_datas;
    }

    /*
     * 将导入的数据插入到数据表中
     *
     */
    private function inert_data($insert_datas,$table_name=''){
        //2019年10月31日22:27:12
        //提交管理员表
        if($table_name == 'admin'){
            //foreach 遍历 添加 获取 自增id 方便添加中间表
            foreach ($insert_datas as $key => $value){
                $value['add_time'] = date('Y-m-d H:i:s');
                $result = model($table_name)->insertGetId($value);
                $admin_role[] = array(
                    'admin_id' => $result,
                    //教师阅卷管理员
                    'role_id' => 9,
                );
            }
            if($result){
                //添加到 管理员与角色的中间表
                Db::name('admin_role')->insertAll($admin_role);
                return true;
            }else{
                return false;
            }
        }
        //将添加时间修改成当前时间
        foreach ($insert_datas as &$insert_data){
            $major_id = input('post.major_id1','');
            $subject_id = input('post.subject_id1');
//            $course_id = input('post.course_id','');

            if ($table_name != 'em_students') {
                if(!empty($major_id)){
                    $insert_data['major_id'] = $major_id;
                }
                if(!empty($subject_id)){
                    $insert_data['subject_id'] = $subject_id;
                }
            }else {
                if(!empty($major_id)){
                    $insert_data['major_id'] = $major_id;
                }

            }
            if(!empty($insert_data['passwd'])){
                $insert_data['passwd'] = md5($insert_data['passwd']);
            }
            $insert_data['add_time'] = date('Y-m-d H:i:s');
            $insert_data['status'] = 1;
        }

        $result = model($table_name)->insertAll($insert_datas);

        if($result){

            return true;

        }else{
            return false;
        }
    }
    /**
     * [array_group_by ph]
     * @param  [type] $arr [二维数组]
     * @param  [type] $key [键名]
     * @return [type]      [新的二维数组]
     */
    private function array_group_by($arr, $key)
    {
        $grouped = array();
        foreach ($arr as $value) {
            $grouped[$value[$key]][] = $value;
        }
        if (func_num_args() > 2) {
            $args = func_get_args();
            foreach ($grouped as $key => $value) {
                $parms = array_merge($value, array_slice($args, 2, func_num_args()));
                $grouped[$key] = call_user_func_array('array_group_by', $parms);
            }
        }
        return $grouped;
    }
    /*
     * 自定义函数
     * 作用是将二维数组转为一维的数据结构
     */
    private function arrToOne($Array){

        $arr = array();
        foreach ($Array as $key => $val) {
            $val = array_map(function ($a){return htmlspecialchars($a);},$val);
            if( is_array($val) ) {
                $arr = array_merge($arr, $val);
            } else {
                $arr[] = $val;
            }
        }
        return $arr;
    }
}