#! /bin/sh  
  
#统计远程目录的文件数量
  
proc_num()                     
{
    num=`ls /mnt/nas/ |  wc -l `
    return $num
}
 
proc_num  
number=$?                      
if [ $number -lt 2 ]         
then                            
    /etc/rc.local
fi 
