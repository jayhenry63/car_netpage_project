﻿<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<%Start();%>
<tr><td align=right class='tdhead'>标题 <span style='color:#ff0000'>*</span></td><td><input type=text name='title' id='title' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("title"));}%>" style='width:400px'  maxlength='150'></td></tr>
<tr><td align=right class='tdhead'>标题样式&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="pa_style" id="pa_style" value=<%=r("pa_style")%>>
<a href="javascript:foreColor('pa_style','color:')"><img src=images/color.gif border=0 height=21 align=absbottom></a></td></tr>
<tr><td align=right class='tdhead'>标题图片&nbsp;&nbsp;&nbsp;</td><td><input ondblclick="if(this.value!='')window.open(this.value)" type=text name='titlepic' id='titlepic'  value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("titlepic"));}%>"  style=''  ><a id='upload_titlepic' href="javascript:open_upload('<%=SiteId%>','','image','pa_table_article','titlepic','titlepic')"><img src='/e/images/icon/image.gif' border=0 height=16px hspace=2 alt='上传图片' align='absmiddle'></a></td></tr><tr><td align=right class='tdhead'>目标窗口&nbsp;&nbsp;&nbsp;</td><td><select name='pa_target' id='pa_target'  ><option value='_self' <%if(post=="add"){Response.Write("_self"=="_self"?"selected":"");}else{Response.Write(r("pa_target")=="_self"?"selected":"");}%>>本窗口</option><option value='_blank' <%if(post=="add"){Response.Write("_self"=="_blank"?"selected":"");}else{Response.Write(r("pa_target")=="_blank"?"selected":"");}%>>新窗口</option></select></td></tr><tr><td align=right class='tdhead'>作者&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="pa_autor" id="pa_autor" value="<%=r("pa_autor")%>" maxlength=20>
<select onchange="if(this.options[this.selectedIndex].value!='')document.getElementById('pa_autor').value=this.options[this.selectedIndex].value">
<option value="">选择作者</option>
<option value="PageAdmin">PageAdmin</option>
<option value="佚名">佚名</option>
<option value="管理员">管理员</option>
<option value="不详">不详</option>
</select></td></tr>
<tr><td align=right class='tdhead'>来源&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="pa_source" id="pa_source" value="<%=r("pa_source")%>" maxlength=20>
<select onchange="if(this.options[this.selectedIndex].value!='')document.getElementById('pa_source').value=this.options[this.selectedIndex].value">
<option value="">选择来源</option>
<option value="本站原创">本站原创</option>
<option value="办公室">办公室</option>
<option value="公司">公司</option>
<option value="集团">集团</option>
</select></td></tr>
<tr><td align=right class='tdhead'>发布日期 <span style='color:#ff0000'>*</span></td><td><input type=text name='thedate' id='thedate' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(r("thedate"));}%>" style=''  maxlength='150'><a href="javascript:open_calendar('thedate',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a></td></tr>
<tr><td align=right class='tdhead'>文章简介&nbsp;&nbsp;&nbsp;</td><td><textarea name='pa_introduct' id='pa_introduct'  style='width:400px;height:100px'  ><%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_introduct"));}%></textarea></td></tr>
<tr><td align=right class='tdhead'>详细内容 <span style='color:#ff0000'>*</span></td><td><textarea name='pa_content' id='pa_content'  style=''  ><%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_content"));}%></textarea></td></tr>
<script type='text/javascript' src='/e/incs/fckeditor/fckeditor.js'></script><script  type='text/javascript'>var FCKeditor = new FCKeditor('pa_content');FCKeditor.BasePath = '/e/incs/fckeditor/';FCKeditor.Height = 380;FCKeditor.Config['LinkUpload'] = true;FCKeditor.Config['ImageUpload'] =true;FCKeditor.Config['FlashUpload'] =true;FCKeditor.Config['LinkBrowser'] = true;FCKeditor.Config['ImageBrowser'] =true;FCKeditor.Config['FlashBrowser'] =true;FCKeditor.ToolbarSet ='Simple';FCKeditor.ReplaceTextarea();</script><tr><td colspan=2 align=center><input type='hidden' name='mustname' value='标题,发布日期,详细内容,'><input type='hidden' name='mustfield' value='title,thedate,pa_content,'><input type='hidden' name='musttype' value='text,text,editor,'></td></tr>
<%End();%>






