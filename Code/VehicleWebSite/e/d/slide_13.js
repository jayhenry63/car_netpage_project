
var Image_13=new Array();
var Pics="/e/upload/s1/article/image/2012-09/t_c-20093198125546.jpg|/e/upload/s1/article/image/2013-03/t_30224922.jpg|/e/upload/s1/article/image/2013-03/t_30224701.jpg|/e/upload/s1/fck/image/2013-03/t_2.jpg";
var Links="/index.aspx?lanmuid=63&sublanmuid=547&id=482|/index.aspx?lanmuid=63&sublanmuid=636&id=540|/index.aspx?lanmuid=63&sublanmuid=637&id=539|/index.aspx?lanmuid=63&sublanmuid=547&id=538";
var Titles="美国中小学校长考察团到我校参加...|4所中职试点自主招生 农村中职生...|威海十中召开艺体教育工作会议|广州一小学推校园新闻联播 孩子...";
var Alts="美国中小学校长考察团到我校参加交流和考察活动|4所中职试点自主招生 农村中职生学费将全免|威海十中召开艺体教育工作会议|广州一小学推校园新闻联播 孩子自荐当主持";
var Apic13=Pics.split('|');
var ALink13=Links.split('|');
var ATitle13=Titles.split('|');
var AAlts13=Alts.split('|');
var Show_Text=1;
var Total_Item=Apic13.length;
for(i=0;i<Total_Item;i++)
  {
   Image_13.src = Apic13[i]; 
  }




function LoadSlideBox_13()
{
var bcastr_config="&bcastr_config=0xffffff|2|0x000000|60|0xffffff|0xff6600|0x000033|7|1|1|_self";
//文字颜色|文字位置|文字背景颜色|文字背景透明度|按键文字颜色|按键默认颜色|按键当前颜色|自动播放时间(秒)|图片过渡效果|是否显示按钮|打开目标窗口
var swf_width=298;
var swf_height=232;
Links=escape(Links);
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
document.write('<param name="movie" value="/e/images/swf/bcastr3.swf"><param name="quality" value="high">');
document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
document.write('<param name="FlashVars" value="bcastr_file='+Pics+'&bcastr_link='+Links+'&bcastr_title='+Titles+'&bcastr_config='+bcastr_config+'">');
document.write('<embed src="/e/images/swf/bcastr3.swf" wmode="opaque" FlashVars="bcastr_file='+Pics+'&bcastr_link='+Links+'&bcastr_title='+Titles+'&bcastr_config='+bcastr_config+'& menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); 
document.write('</object>'); 
}




LoadSlideBox_13();