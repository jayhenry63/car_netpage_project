<% @ Control Language="C#" Inherits="PageAdmin.module_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%if(Zdy_Tag==0){%><%=Module_StartHtml%>
<div id="module_<%=Module_Id%>" <%=Module_box_style%>class="module_box<%=Layout%><%=Module_ClassName%>">
<div <%=Module_box_inner%>class="module_box_inner">
<%if(Title_Show=="1"){%>
<div <%=Module_titlebox_style%>class="module_title"><span <%=Module_title_style%>class="module_sign"><%=Module_Title%></span><span <%=Module_more_style%>class="module_more"><%=More_Url%></span></div>
<%}if(Module_Header!=""){%><%=Module_Header%><%}%>
<div id="module_content_<%=Module_Id%>" <%=Module_content_style%>class="module_content">
<%}%><%conn.Open();%><ul id="m_<%=Module_Id%>">
<% 
DataTable dt=Get_Data();
DataRow dr;
for(int i=0;i<dt.Rows.Count;i++)
 {
dr=dt.Rows[i];
%><li><a href="<%=Detail_Url(dr)%>" target="<%=Target%>" title="<%=Server.HtmlEncode(dr["title"].ToString())%>" style="<%=dr["pa_style"]%>"><%=SubStr(dr["title"].ToString(),Title_Num,true)%></a>&nbsp;&nbsp;<span style="color:#999999"><%=((DateTime)dr["thedate"]).ToString("M月d日")%></span></li><%
 }
%>
</ul>
<script type="text/javascript">
new Marquee("n_<%=Module_Id%>","top",1,null,null,50,0,null,null);
</script><%conn.Close();%>
<%if(Zdy_Tag==0){%></div><div class="module_footer"><span class="l"></span><span class="r"></span></div>
</div>
</div><%=Module_EndHtml%><%}%>