﻿
var Image_12=new Array();
var Pics="/e/images/banner/b_1.jpg|/e/images/banner/b_2.jpg|/e/images/banner/b_3.jpg";
var Links="";
var Titles="";
var Alts="";
var Apic12=Pics.split('|');
var ALink12=Links.split('|');
var ATitle12=Titles.split('|');
var AAlts12=Alts.split('|');
var Show_Text=0;
var Total_Item=Apic12.length;
for(i=0;i<Total_Item;i++)
  {
   Image_12.src = Apic12[i]; 
  }




function LoadSlideBox_12()
{
var bcastr_config="&bcastr_config=0xffffff|2|0x000000|60|0xffffff|0xff6600|0x000033|7|1|1|_self";
//文字颜色|文字位置|文字背景颜色|文字背景透明度|按键文字颜色|按键默认颜色|按键当前颜色|自动播放时间(秒)|图片过渡效果|是否显示按钮|打开目标窗口
var swf_width=1000;
var swf_height=300;
Links=escape(Links);
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
document.write('<param name="movie" value="/e/images/swf/bcastr3.swf"><param name="quality" value="high">');
document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
document.write('<param name="FlashVars" value="bcastr_file='+Pics+'&bcastr_link='+Links+'&bcastr_title='+Titles+'&bcastr_config='+bcastr_config+'">');
document.write('<embed src="/e/images/swf/bcastr3.swf" wmode="opaque" FlashVars="bcastr_file='+Pics+'&bcastr_link='+Links+'&bcastr_title='+Titles+'&bcastr_config='+bcastr_config+'& menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); 
document.write('</object>'); 
}




LoadSlideBox_12();