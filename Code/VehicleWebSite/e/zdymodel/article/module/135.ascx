﻿<% @ Control Language="C#" Inherits="PageAdmin.module_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%if(Zdy_Tag==0){%><%=Module_StartHtml%>
<div id="module_<%=Module_Id%>" <%=Module_box_style%>class="module_box<%=Layout%><%=Module_ClassName%>">
<div <%=Module_box_inner%>class="module_box_inner">
<%if(Title_Show=="1"){%>
<div <%=Module_titlebox_style%>class="module_title"><span <%=Module_title_style%>class="module_sign"><%=Module_Title%></span><span <%=Module_more_style%>class="module_more"><%=More_Url%></span></div>
<%}if(Module_Header!=""){%><%=Module_Header%><%}%>
<div id="module_content_<%=Module_Id%>" <%=Module_content_style%>class="module_content">
<%}%><%conn.Open();%><ul id="n_<%=Module_Id%>" style="height:200px;" class="gonggao"><% 
DataTable dt=Get_Data();
DataRow dr;
for(int i=0;i<dt.Rows.Count;i++)
{
dr=dt.Rows[i];
%><li style="line-height:25px;"><a href="<%=Detail_Url(dr)%>" target="<%=Target%>" title="<%=Server.HtmlEncode(dr["title"].ToString())%>"><%=dr["title"].ToString()%></a></li>
<%
}
%></ul>
<script type="text/javascript">
new Marquee("n_<%=Module_Id%>","top",1,null,null,40,null,null,1000);//new Marquee完整调用，null表示默认值
</script><%conn.Close();%>
<%if(Zdy_Tag==0){%></div><div class="module_footer"><span class="l"></span><span class="r"></span></div>
</div>
</div><%=Module_EndHtml%><%}%>