﻿<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<tr><td class='tdhead'>邮箱<span style='color:#ff0000'>*</span></td><td><input type=text name='email' id='email' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("email"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>联系人<span style='color:#ff0000'>*</span></td><td><input type=text name='truename' id='truename' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("truename"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>联系电话</td><td><input type=text name='pa_tel' id='pa_tel' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_tel"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>传真</td><td><input type=text name='pa_fax' id='pa_fax' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_fax"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>QQ号码</td><td><input type=text name='pa_qq' id='pa_qq' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_qq"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>MSN</td><td><input type=text name='pa_msn' id='pa_msn' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_msn"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>联系地址</td><td><input type=text name='pa_address' id='pa_address' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_address"));}%>" style='height:18px;border:1px solid #cccccc;text-align:left;width:290px'   maxlength='100' ></td></tr>
<tr><td class='tdhead'>如何知道本站</td><td> <input type=radio value='百度'  name='pa_from' id='pa_from' <%if(post=="add"){Response.Write("百度"=="百度"?"checked":"");}else{Response.Write(r("pa_from")=="百度"?"checked":"");}%>>百度 <input type=radio value='google '  name='pa_from' id='pa_from' <%if(post=="add"){Response.Write("百度"=="google "?"checked":"");}else{Response.Write(r("pa_from")=="google "?"checked":"");}%>>google  <input type=radio value='朋友介绍  '  name='pa_from' id='pa_from' <%if(post=="add"){Response.Write("百度"=="朋友介绍  "?"checked":"");}else{Response.Write(r("pa_from")=="朋友介绍  "?"checked":"");}%>>朋友介绍   <input type=radio value='其他网站'  name='pa_from' id='pa_from' <%if(post=="add"){Response.Write("百度"=="其他网站"?"checked":"");}else{Response.Write(r("pa_from")=="其他网站"?"checked":"");}%>>其他网站</td></tr>
<input type='hidden' name='mustname' value='邮箱,联系人,'><input type='hidden' name='mustfield' value='email,truename,'><input type='hidden' name='musttype' value='text,text,'>
<script  type='text/javascript'>
function pa_member_zdycheck(){
return true;
}
</script>
<%End();%>






