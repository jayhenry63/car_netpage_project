<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<!---幻灯片--><div class="left home_slide" style="width:303px;height:250px"><script src="/e/d/slide_13.js" type="text/javascript"></script></div>
<!---校园新闻选项卡-->
<div class="left" style="width:400px">
<div class="tab" style="height:240px">
<dl class="tabheader" id="tabheader">
<dd><a href=/index.aspx?lanmuid=63&sublanmuid=547>校园新闻</a></dd>
<dd><a href=/index.aspx?lanmuid=63&sublanmuid=548>招生动态</a></dd>
<dd><a href=/index.aspx?lanmuid=63&sublanmuid=548>德育之窗</a></dd>
</dl>
<dl class="tabcontent" id="tabcontent">
<dd><% @ Register TagPrefix="ascx" TagName="M_0" src="/e/zdymodel/article/module/126.ascx"%><ascx:M_0 runat="server" SiteId=1 ZdyTag=1 ModuleId="185_0"  TagTable="article" TagSortId=600 SqlOrder="order by " SqlCondition="" ShowNum=6 TitleNum=50 TitlePicWidth=0 TitlePicHeight=50 TheTarget="_self"/></dd>
<dd><% @ Register TagPrefix="ascx" TagName="M_1" src="/e/zdymodel/article/module/126.ascx"%><ascx:M_1 runat="server" SiteId=1 ZdyTag=1 ModuleId="185_1"  TagTable="article" TagSortId=602 SqlOrder="order by " SqlCondition="" ShowNum=6 TitleNum=50 TitlePicWidth=0 TitlePicHeight=50 TheTarget="_self"/></dd>
<dd><% @ Register TagPrefix="ascx" TagName="M_2" src="/e/zdymodel/article/module/43.ascx"%><ascx:M_2 runat="server" SiteId=1 ZdyTag=1 ModuleId="185_2"  TagTable="article" TagSortId=583 SqlOrder="order by " SqlCondition="" ShowNum=6 TitleNum=50 TitlePicWidth=150 TitlePicHeight=150 TheTarget="_self"/></dd>
</dl>
</div>
</div>
<script type="text/javascript">
tabs("tabheader","tabcontent","onmouseover")
</script>
<div class="clear"></div>
<%End();%>