﻿<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<tr id='tr_jl_pa_position'><td class='tdhead'>应聘职位<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_position' id='pa_position' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_position"));}%>" size="25" maxlength='100' ><span id="pa_position_tip"></span></td></tr>
<tr id='tr_jl_title'><td class='tdhead'>姓名<span style='color:#ff0000'>*</span></td><td><input type=text name='title' id='title' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("title"));}%>" size="25" maxlength='100' ><span id="title_tip"></span></td></tr>
<tr id='tr_jl_titlepic'><td class='tdhead'>照片</td><td><input ondblclick="if(this.value!='')window.open(this.value)" type=text name='titlepic' id='titlepic'  value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("titlepic"));}%>" size="25" ><a href="javascript:delete_file('jl','titlepic',<%=InforId%>)" id="delete_titlepic" style="padding-left:2px;display:<%=r("titlepic")==""?"none":""%>" title='删除图片'><img src=/e/images/public/del.gif border=0></a><a id='upload_titlepic' href="javascript:open_upload('<%=SiteId%>','','image','jl','titlepic','titlepic')" style="display:<%=r("titlepic")==""?"":"none"%>"><img src='/e/images/public/attachimg.gif' border=0  hspace=2 alt='上传图片' align=absbottom></a><span id="titlepic_tip"></span></td></tr><tr id='tr_jl_pa_xb'><td class='tdhead'>性别<span style='color:#ff0000'>*</span></td><td> <input type=radio value="男"  name='pa_xb' id='pa_xb' <%if(post=="add"){Response.Write("男"=="男"?"checked":"");}else{Response.Write(r("pa_xb")=="男"?"checked":"");}%>>男 <input type=radio value="女"  name='pa_xb' id='pa_xb' <%if(post=="add"){Response.Write("男"=="女"?"checked":"");}else{Response.Write(r("pa_xb")=="女"?"checked":"");}%>>女<span id="pa_xb_tip"></span></td></tr><tr id='tr_jl_pa_birthday'><td class='tdhead'>出生年月<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_birthday' id='pa_birthday' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("pa_birthday")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength='100' ><a href="javascript:open_calendar('pa_birthday',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="pa_birthday_tip"></span></td></tr>
<tr id='tr_jl_pa_sfz'><td class='tdhead'>身份证号<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_sfz' id='pa_sfz' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_sfz"));}%>" size="25" maxlength='100' ><span id="pa_sfz_tip"></span></td></tr>
<tr id='tr_jl_pa_nation'><td class='tdhead'>民族<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_nation' id='pa_nation' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_nation"));}%>" size="25" maxlength='100' ><span id="pa_nation_tip"></span></td></tr>
<tr id='tr_jl_pa_zzmm'><td class='tdhead'>政治面貌<span style='color:#ff0000'>*</span></td><td><select name='pa_zzmm' id='pa_zzmm'   ><option value="普通公民">普通公民</option><option value="共青团员 ">共青团员 </option><option value="中共党员">中共党员</option><option value="党外人士">党外人士</option><option value="港澳同胞">港澳同胞</option></select><span id="pa_zzmm_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Selected("","pa_zzmm")</script><%}else{%><script type="text/javascript">Set_Selected("<%=r("pa_zzmm")%>","pa_zzmm")</script><%}%></td></tr><tr id='tr_jl_pa_marriage'><td class='tdhead'>婚姻状况<span style='color:#ff0000'>*</span></td><td><select name='pa_marriage' id='pa_marriage'   ><option value="未婚">未婚</option><option value="已婚">已婚</option></select><span id="pa_marriage_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Selected("","pa_marriage")</script><%}else{%><script type="text/javascript">Set_Selected("<%=r("pa_marriage")%>","pa_marriage")</script><%}%></td></tr><tr id='tr_jl_pa_hometown'><td class='tdhead'>籍贯<span style='color:#ff0000'>*</span></td><td><select name='pa_hometown' id='pa_hometown'   ><option value="北京">北京</option><option value="上海">上海</option><option value="天津">天津</option><option value="重庆">重庆</option><option value="广东">广东</option><option value="浙江">浙江</option><option value="福建">福建</option><option value="安徽">安徽</option><option value="广西">广西</option><option value="云南">云南</option><option value="贵州">贵州</option><option value="四川">四川</option><option value="湖北">湖北</option><option value="湖南">湖南</option><option value="海南">海南</option><option value="江苏">江苏</option><option value="江西">江西</option><option value="陕西">陕西</option><option value="山东">山东</option><option value="山西">山西</option><option value="河北">河北</option><option value="河南">河南</option><option value="黑龙江">黑龙江</option><option value="辽宁">辽宁</option><option value="吉林">吉林</option><option value="宁夏">宁夏</option><option value="青海">青海</option><option value="西藏">西藏</option><option value="新疆">新疆</option><option value="内蒙古">内蒙古</option><option value="甘肃">甘肃</option><option value="香港">香港</option><option value="台湾">台湾</option><option value="澳门">澳门</option></select><span id="pa_hometown_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Selected("","pa_hometown")</script><%}else{%><script type="text/javascript">Set_Selected("<%=r("pa_hometown")%>","pa_hometown")</script><%}%></td></tr><tr id='tr_jl_pa_homeaddress'><td class='tdhead'>家庭住址<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_homeaddress' id='pa_homeaddress' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_homeaddress"));}%>" size="50" maxlength='100' ><span id="pa_homeaddress_tip"></span></td></tr>
<tr id='tr_jl_pa_xl'><td class='tdhead'>学历</td><td><select name='pa_xl' id='pa_xl'   ><option value="博士后">博士后</option><option value="博士">博士</option><option value="硕士">硕士</option><option value="本科">本科</option><option value="专科">专科</option><option value="中技">中技</option><option value="职高">职高</option><option value="高中">高中</option><option value="初中级以下">初中级以下</option></select><span id="pa_xl_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Selected("","pa_xl")</script><%}else{%><script type="text/javascript">Set_Selected("<%=r("pa_xl")%>","pa_xl")</script><%}%></td></tr><tr id='tr_jl_pa_graduateschool'><td class='tdhead'>毕业学校<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_graduateschool' id='pa_graduateschool' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_graduateschool"));}%>" size="25" maxlength='100' ><span id="pa_graduateschool_tip"></span></td></tr>
<tr id='tr_jl_pa_professionalname'><td class='tdhead'>专业名称<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_professionalname' id='pa_professionalname' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_professionalname"));}%>" size="25" maxlength='100' ><span id="pa_professionalname_tip"></span></td></tr>
<tr id='tr_jl_pa_graduationtime'><td class='tdhead'>毕业时间<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_graduationtime' id='pa_graduationtime' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("pa_graduationtime")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength='100' ><a href="javascript:open_calendar('pa_graduationtime',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="pa_graduationtime_tip"></span></td></tr>
<tr id='tr_jl_pa_wysp'><td class='tdhead'>外语水平<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_wysp' id='pa_wysp' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_wysp"));}%>" size="25" maxlength='100' ><span id="pa_wysp_tip"></span></td></tr>
<tr id='tr_jl_pa_expectationssalary'><td class='tdhead'>期望月薪<span style='color:#ff0000'>*</span></td><td><select name='pa_expectationssalary' id='pa_expectationssalary'   ><option value="1000-2000元">1000-2000元</option><option value="2000-3000元">2000-3000元</option><option value="3000-5000元">3000-5000元</option><option value="5000-8000元">5000-8000元</option><option value="8000-1万元">8000-1万元</option><option value="面谈">面谈</option></select><span id="pa_expectationssalary_tip"></span><%if(post=="add"){%><script type="text/javascript">Set_Selected("","pa_expectationssalary")</script><%}else{%><script type="text/javascript">Set_Selected("<%=r("pa_expectationssalary")%>","pa_expectationssalary")</script><%}%></td></tr><tr id='tr_jl_pa_computer'><td class='tdhead'>计算机水平<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_computer' id='pa_computer' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_computer"));}%>" size="25" maxlength='100' ><span id="pa_computer_tip"></span></td></tr>
<tr id='tr_jl_pa_tel'><td class='tdhead'>联系电话<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_tel' id='pa_tel' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_tel"));}%>" size="25" maxlength='100' ><span id="pa_tel_tip"></span></td></tr>
<tr id='tr_jl_pa_phone'><td class='tdhead'>手机<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_phone' id='pa_phone' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_phone"));}%>" size="25" maxlength='100' ><span id="pa_phone_tip"></span></td></tr>
<tr id='tr_jl_email'><td class='tdhead'>邮箱<span style='color:#ff0000'>*</span></td><td><input type=text name='email' id='email' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("email"));}%>" size="25" maxlength='100' ><span id="email_tip"></span></td></tr>
<tr id='tr_jl_pa_address'><td class='tdhead'>通讯地址<span style='color:#ff0000'>*</span></td><td><input type=text name='pa_address' id='pa_address' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_address"));}%>" size="50" maxlength='100' ><span id="pa_address_tip"></span></td></tr>
<tr id='tr_jl_thedate'><td class='tdhead'>发布日期<span style='color:#ff0000'>*</span></td><td><input type=text name='thedate' id='thedate' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("thedate")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength='100' ><a href="javascript:open_calendar('thedate',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="thedate_tip"></span></td></tr>
<tr id='tr_jl_pa_zwpj'><td class='tdhead' id='tr_jl_pa_zwpj'>自我评价<span style='color:#ff0000'>*</span></td><td><textarea name='pa_zwpj' id='pa_zwpj' cols="80" rows="10" ><%if(post=="add"){Response.Write("");}else{Response.Write(r("pa_zwpj"));}%></textarea><span id="pa_zwpj_tip"></span></td></tr>
<tr id='tr_jl_content'><td class='tdhead' id='tr_jl_content'>工作经历<span style='color:#ff0000'>*</span></td><td><textarea name='content' id='content' cols="80" rows="10" ><%if(post=="add"){Response.Write("");}else{Response.Write(r("content"));}%></textarea><span id="content_tip"></span></td></tr>

<input type='hidden' name='mustname' value='应聘职位,姓名,性别,出生年月,身份证号,民族,政治面貌,婚姻状况,籍贯,家庭住址,毕业学校,专业名称,毕业时间,外语水平,期望月薪,计算机水平,联系电话,手机,邮箱,通讯地址,发布日期,自我评价,工作经历,'><input type='hidden' name='mustfield' value='pa_position,title,pa_xb,pa_birthday,pa_sfz,pa_nation,pa_zzmm,pa_marriage,pa_hometown,pa_homeaddress,pa_graduateschool,pa_professionalname,pa_graduationtime,pa_wysp,pa_expectationssalary,pa_computer,pa_tel,pa_phone,email,pa_address,thedate,pa_zwpj,content,'><input type='hidden' name='musttype' value='text,text,radio,text,text,text,select,select,select,text,text,text,text,text,select,text,text,text,text,text,text,textarea,textarea,'>
<script  type='text/javascript'>
function jl_zdycheck(){
return true;
}
</script>
<%End();%>






