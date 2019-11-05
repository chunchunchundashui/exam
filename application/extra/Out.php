<?php
/**
 * Created by PhpStorm.
 * User: Charles
 * Date: 2018/4/16
 * Time: 11:58
 */

namespace app\admin\controller;


class Out
{
    /**
     * 地址:https://github.com/PHPOffice/PHPExcel    下载PHPExcel，下载后只需要Classes目录下的文件即可。
     * 数据导出
     * @param array $title   标题行名称
     * @param array $data   导出数据
     * @param string $fileName 文件名
     * @param string $savePath 保存路径
     * @param $type   是否下载  false--保存   true--下载
     * @return string   返回文件全路径
     */
   public function exportExcel($title=array(), $data=array(), $fileName='',$sheet='', $savePath='./', $isDown=false){

       vendor("PHPExcel.PHPExcel.PHPExcel");
       vendor("PHPExcel.PHPExcel.Writer.IWriter");
       vendor("PHPExcel.PHPExcel.Writer.Abstract");
       vendor("PHPExcel.PHPExcel.Writer.Excel5");
       vendor("PHPExcel.PHPExcel.Writer.Excel2007");
       vendor("PHPExcel.PHPExcel.IOFactory");
      // $objPHPExcel = new \PHPExcel();
       $obj = new \PHPExcel();

        //横向单元格标识
        $cellName = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW', 'AX', 'AY', 'AZ');

        $obj->getActiveSheet(0)->setTitle($sheet);   //设置sheet名称
        $_row = 1;   //设置纵向单元格标识
        if($title){
            $_cnt = count($title);
            // $obj->getActiveSheet(0)->mergeCells('A'.$_row.':'.$cellName[$_cnt-1].$_row);   //合并单元格
            // $obj->setActiveSheetIndex(0)->setCellValue('A'.$_row, '数据导出：'.date('Y-m-d H:i:s'));  //设置合并后的单元格内容
            // $_row++;
            $i = 0;
            foreach($title as $v){   //设置列标题
               // dump($cellName[$i].$_row);
                $obj->setActiveSheetIndex(0)->setCellValue($cellName[$i].$_row, $v);
                $i++;
            }
            $_row++;
        }

        //填写数据
        if($data){
            $i = 0;
            foreach($data as $_v){
                $j = 0;
                foreach($_v as $_cell){
                    $obj->getActiveSheet(0)->setCellValue($cellName[$j] . ($i+$_row), $_cell);
                    $j++;
                }
                $i++;
            }
        }

        //文件名处理
        if(!$fileName){
            $fileName = uniqid(time(),true);
        }

        $objWrite = \PHPExcel_IOFactory::createWriter($obj, 'Excel2007');


        if($isDown){   //网页下载
//            header('pragma:public');
//            header("Content-Disposition:attachment;filename=$fileName.xls");
//            $objWrite->save('php://output');exit;
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

            header('Content-Disposition: attachment;filename="'.$fileName.'.xlsx"');

            header('Cache-Control: max-age=0');
            $objWrite->save('php://output');exit;

        }

        $_fileName = iconv("utf-8", "gb2312", $fileName);   //转码
        $_savePath = $savePath.$_fileName.'.xlsx';
        $objWrite->save($_savePath);

        return $savePath.$fileName.'.xlsx';
    }
}