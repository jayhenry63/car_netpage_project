﻿<% @ Control Language="C#" Inherits="PageAdmin.nav_zdymodel" %>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%if(Zdy_Tag==0){%><div id="nav_<%=Nav_Id%>" <%=Nav_box_style%>class="nav_box<%=Nav_ClassName%>">
<%if(Title_Show=="1"){%>
<div <%=Nav_titlebox_style%>class="nav_title"><span <%=Nav_title_style%>class="nav_sign"><%=Nav_title%></span><span <%=Nav_more_style%>class="nav_more"><%=More_Url%></span></div>
<%}if(Nav_Header!=""){Response.Write(Nav_Header);}%>
<div id="nav_content_<%=Nav_Id%>" <%=Nav_content_style%>class="nav_content">
<%}%><%conn.Open();%><div class="download">
<ul>
<% 
DataTable dt;
DataRow dr;
dt=Get_Data();
for(int i=0;i<dt.Rows.Count;i++)
 {
dr=dt.Rows[i];
%>
<li><span class="title">
<a href="<%=Detail_Url(dr)%>" target="<%=Target%>" title="<%=Server.HtmlEncode(dr["title"].ToString())%>"><%=SubStr(dr["title"].ToString(),Title_Num,true)%></a></span>
<span class="date"><%=((DateTime)dr["thedate"]).ToString("M-d")%></span>
<span class="clear"></span>
</li>
<%
 }
%>
</ul>
</div>
<%conn.Close();%>
<%if(Zdy_Tag==0){%></div>
</div><%}%>