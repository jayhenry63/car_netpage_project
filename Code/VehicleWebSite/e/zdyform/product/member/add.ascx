﻿<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<tr id='tr_product_title'><td class='tdhead'>产品名称<span style='color:#ff0000'>*</span></td><td><input type=text name='title' id='title' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("title"));}%>" style='width:300px'   maxlength='100' ><span id="title_tip"></span></td></tr>
<tr id='tr_product_pa_xinghao'><td class='tdhead'>产品型号<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_xinghao' id='pa_xinghao' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_xinghao"));}%>" style='width:200px'   maxlength='100' ><span id="pa_xinghao_tip"></span></td></tr>
<tr id='tr_product_price'><td class='tdhead'>产品价格</td><td><input type=text name='price' id='price' value="<%if(post=="add"){Response.Write("0");}else{Response.Write(r("price"));}%>"  maxlength='100' ><span id="price_tip"></span></td></tr>
<tr id='tr_product_pa_images'><td class='tdhead'>产品图组<span style='color:#ff0000'>*</span><br><input type='button' value='增加图片' class='f_bt' onclick="open_files('<%=SiteId%>','0','product','pa_images','images','<%=InforId%>')"><br><input type='button' id='Edit_pa_images' value='刷新图片' class='f_bt' onclick="Iframe_Submit('iframe_pa_images')" style='display:none'></td><td><div id='pa_images_box' style='width:98%;border:1px solid #cccccc;background-color:#ffffff;padding:5px 5px 5px 5px'><input type=hidden value='0' name='pa_images' id='pa_images'><iframe  id='iframe_pa_images' name='iframe_pa_images' allowtransparency='true' src='/e/aspx/file_list.aspx?id=<%=InforId%>&table=product&field=pa_images&fieldtype=images&sid=<%=SiteId%>&from=member' frameborder=0 scroling=auto height=150px width=100% marginwidth=0 marginheight=0 align=center></iframe></div><span id="pa_images_tip"></span></td></tr><tr id='tr_product_titlepic'><td class='tdhead'>标题图片<span style='color:#ff0000'>*</span></td><td><input ondblclick="if(this.value!='')window.open(this.value)" type=text name='titlepic' id='titlepic'  value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("titlepic"));}%>" style='width:200px'   ><%if(Field_ImageUpload=="true"){%><a href="javascript:delete_file('product','titlepic',<%=InforId%>)" id="delete_titlepic" style="padding-left:2px;display:<%=r("titlepic")==""?"none":""%>" title='删除图片'><img src=/e/images/public/del.gif border=0></a><a id='upload_titlepic' href="javascript:open_upload('<%=SiteId%>','','image','product','titlepic','titlepic')" style="display:<%=r("titlepic")==""?"":"none"%>"><img src='/e/images/public/attachimg.gif' border=0  hspace=2 alt='上传图片' align=absbottom></a><%}%><span id="titlepic_tip"></span></td></tr><tr id='tr_product_thedate'><td class='tdhead'>发布日期<span style='color:#ff0000'>*</span></td><td><input type=text name='thedate' id='thedate' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("thedate")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength='100' ><a href="javascript:open_calendar('thedate',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="thedate_tip"></span></td></tr>
<tr id='tr_product_pa_introduction'><td class='tdhead' id='tr_product_pa_introduction'>产品简介</td><td><textarea name='pa_introduction' id='pa_introduction' cols="50"   rows="5" ><%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_introduction"));}%></textarea><span id="pa_introduction_tip"></span></td></tr>
<tr id='tr_product_content'><td class='tdhead'>产品介绍</td><td><textarea name='content' id='content'250  ><%if(post=="add"){Response.Write("");}else{Response.Write(r("content"));}%></textarea><script type='text/javascript' src='/e/incs/fckeditor/fckeditor.js'></script><script  type='text/javascript'>var FCKeditor = new FCKeditor('content');FCKeditor.BasePath = '/e/incs/fckeditor/';FCKeditor.Height = 250;FCKeditor.Config['LinkBrowser'] = false;FCKeditor.Config['ImageBrowser'] =false;FCKeditor.Config['FlashBrowser'] =false;FCKeditor.Config['LinkUpload'] =<%=Editor_AttachmentUpload%>;FCKeditor.Config['ImageUpload'] =<%=Editor_ImageUpload%>;FCKeditor.Config['FlashUpload'] =<%=Editor_FlashUpload%>;FCKeditor.ToolbarSet ='Basic';FCKeditor.ReplaceTextarea();</script><span id="content_tip"></span></td></tr>

<input type='hidden' name='mustname' value='产品名称,产品型号,产品图组,标题图片,发布日期,'><input type='hidden' name='mustfield' value='title,pa_xinghao,pa_images,titlepic,thedate,'><input type='hidden' name='musttype' value='text,text,images,image,text,'>
<script  type='text/javascript'>
function product_zdycheck(){
return true;
}
</script>
<%End();%>






