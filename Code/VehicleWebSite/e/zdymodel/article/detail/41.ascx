<% @ Control Language="C#" Inherits="PageAdmin.detail_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<div class="current_location current_location_<%=Sublanmu_Id%>" id="current_location"><ul><li class="current_location_1"><%=Current_Location%></li><li class="current_location_2"><%=Current_Name%></li></ul></div>
<div class="sublanmu_box sublanmu_box_<%=Sublanmu_Id%>" id="sublanmu_box">
<div class="sublanmu_content" id="sublanmu_content">
<%conn.Open();%><% 
string video,fj;
DataTable dt=Get_Data(); 
DataRow dr; 
for(int i=0;i<dt.Rows.Count;i++)
 {
  dr=dt.Rows[i]; 
  video=dr["pa_video"].ToString();
  fj=dr["pa_fj"].ToString();
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
<div class="content" id="Content">
<%if(video!=""){%>
<div align=center style="padding:5px 0 5px 0">
<script type="text/javascript" src="/e/js/video.js"></script>
<script>player("<%=video%>",500,400)</script></div>
<%}%>
<%=dr["content"].ToString()%>
<%if(fj!=""){
string[] Afj=fj.Split('/');
string fj_name=Afj[Afj.Length-1];
string fj_exe=(fj_name.Split('.'))[1];
string style="padding:5px 0 0 17px;background:url(/e/images/icon/"+fj_exe+".gif) no-repeat left center;";
%>
<div style="<%=style%>"><a href="<%=fj%>"><%=fj_name%></a></div>
<%}%>
</div>
</div>
<script src="/e/js/internal_page.js" type="text/javascript"></script>
<%if(Related_Ids!="0")
{
Response.Write("<div class='related'>&nbsp;<span class='headtxt'>相关文档</span><ul>");
string[] ARelated_Ids=Related_Ids.Split(',');
for(int k=0;k<ARelated_Ids.Length;k++)
{
  dt=Get_Data("select * from article where id="+ARelated_Ids[k]); 
   if(dt.Rows.Count>0)
   {
   dr=dt.Rows[0];
%><li><a href="<%=Detail_Url(dr)%>" target=_blank><%=dr["title"].ToString()%></a></li><%
}
}
Response.Write("</ul></div>");
}
}
Prev_and_Next();
%>
<ul class="sublanmu_pn">
<li><%=_Previous==""?"":"上一篇："+_Previous%></li>
<li><%=_Next==""?"":"下一篇："+_Next%></li>
</ul><%conn.Close();%>
<script type="text/javascript">Get_Info("<%=Thetable%>","<%=Detail_Id%>")</script>
<asp:PlaceHolder id="P_Comment" runat="server"/></div></div>