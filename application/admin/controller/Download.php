<?php
/**
 * Created by PhpStorm.
 * User: Charles
 * Date: 2018/4/13
 * Time: 11:56
 */

namespace app\admin\controller;


use think\Controller;
use think\Db;


class Download extends Controller
{
    public function out($table_name ='')
    {
        /**
         * 地址:https://github.com/PHPOffice/PHPExcel    下载PHPExcel，下载后只需要Classes目录下的文件即可。
         * 数据导出
         * @param array $title 标题行名称
         * @param array $data 导出数据
         * @param string $fileName 文件名
         * @param string $savePath 保存路径
         * @param $type   是否下载  false--保存   true--下载
         * @return string   返回文件全路径
         */
      //  $table_name = isset($table_name)?$table_name:'mode';
        $db =  new Db(); //实例化db类
        $data = $db::query("select * from {$table_name}"); //查询数据

        $table_comment=$db::query("select TABLE_COMMENT from information_schema.TABLES where TABLE_NAME='".$table_name."'
            and TABLE_SCHEMA='".config('database.database')."'");  //查看表备注
        $table_type = $db::query("show full fields from ".$table_name);
        $out = new Out();
        //var_dump($table_type);die;
        $tablename = $table_comment[0]['TABLE_COMMENT'];
        $arr = [];
        foreach ($table_type as $table){
            $arr[] =  $table['Comment'];
        }
        foreach ($data as &$row){
//            $row['add_time'] = date('Y-m-d H:i:s',$row['add_time']);
            $row['add_time'] = date($row['add_time']);
            $row['status'] = $row['status'] == 1?'正常':'异常';
        }
        $out->exportExcel($arr, $data,$tablename,$tablename,'','true');
        die;

    }

}