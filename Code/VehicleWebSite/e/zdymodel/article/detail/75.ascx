﻿<% @ Control Language="C#" Inherits="PageAdmin.detail_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<div class="current_location current_location_<%=Sublanmu_Id%>" id="current_location"><ul><li class="current_location_1"><%=Current_Location%></li><li class="current_location_2"><%=Current_Name%></li></ul></div>
<div class="sublanmu_box sublanmu_box_<%=Sublanmu_Id%>" id="sublanmu_box">
<div class="sublanmu_content" id="sublanmu_content">
<%conn.Open();%><% 
string Pics="";
int News_Pic=0;
DataTable dt,dt1;
dt=Get_Data(); 
DataRow dr,dr1; 
for(int i=0;i<dt.Rows.Count;i++)
 {
  dr=dt.Rows[i]; 
  if(dr["pa_pics"].ToString()!="0" && dr["pa_pics"].ToString()!="")
   {
     News_Pic=int.Parse(dr["pa_pics"].ToString());
   }
%>
<div class="articleinfor" id="articleinfor">
<ul>
<li class="title"><h1><%=Server.HtmlEncode(dr["title"].ToString())%>
</h1></li>
<li class="info">
发布日期：<%=((DateTime)dr["thedate"]).ToString("yyyy-MM-dd")%>&nbsp;&nbsp;
<%=dr["pa_autor"].ToString()==""?"":"&nbsp;作者："+dr["pa_autor"].ToString()%>
浏览量：<span id="clicks"></span>&nbsp;&nbsp;<%=dr["pa_source"].ToString()==""?"":"&nbsp;来源："+dr["pa_source"].ToString()%>&nbsp;&nbsp;字号：[&nbsp;<a href="javascript:FontZoom('16px','Content')">大</a> <a href="javascript:FontZoom('14px','Content')">中</a>  <a href="javascript:FontZoom('12px','Content')">小</a>]
</li>
</ul>

<%//新闻图片组开始
if(News_Pic>0)
{%>
<TEXTAREA  id="photoList342" style="display:none">
<%
dt1=Get_File("article","pa_pics",Detail_Id);
for(int k=0;k<dt1.Rows.Count;k++)
 {
   dr1=dt1.Rows[k]; 
%><li>
<a href="#p=<%=k+1%>" hidefocus="true"><img src="<%=dr1["thumbnail"]%>"/></a>
<h2><%=dr1["title"]%></h2>
<p></p>
<i title="img"><%=dr1["url"]%></i>
<i title="timg"><%=dr1["thumbnail"]%></i>
</li><%}%>
</TEXTAREA>
<div align=center style="padding:10px 0  0 0"><iframe src="/e/images/picsview/pics.aspx?num=<%=News_Pic%>" frameborder=0 align=middle marginheight=0 marginwidth=0 scrolling=no width=570px height=600px></iframe></div>
<%}//图片组结束%>
<div class="content" id="Content"><%=dr["content"].ToString()%></div>
</div>
<script src="/e/js/internal_page.js" type="text/javascript"></script>
<%}
Prev_and_Next();
%>
<ul class="sublanmu_pn">
<li><%=_Previous==""?"":"上一篇："+_Previous%></li>
<li><%=_Next==""?"":"下一篇："+_Next%></li>
</ul>
<%conn.Close();%>
<script type="text/javascript">Get_Info("<%=Thetable%>","<%=Detail_Id%>")</script>
<asp:PlaceHolder id="P_Comment" runat="server"/></div></div>