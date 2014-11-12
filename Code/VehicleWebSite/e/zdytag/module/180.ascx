<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td><% @ Register TagPrefix="ascx" TagName="M_0" src="/e/zdymodel/article/module/47.ascx"%><ascx:M_0 runat="server" SiteId=1 ZdyTag=1 ModuleId="180_0"  TagTable="article" TagSortId=583 SqlOrder="order by " SqlCondition="and titlepic<>''" ShowNum=1 TitleNum=50 TitlePicWidth=80 TitlePicHeight=60 TheTarget="_self"/></td>
        </tr>
        <tr>
            <td><% @ Register TagPrefix="ascx" TagName="M_1" src="/e/zdymodel/article/module/43.ascx"%><ascx:M_1 runat="server" SiteId=1 ZdyTag=1 ModuleId="180_1"  TagTable="article" TagSortId=583 SqlOrder="order by " SqlCondition="" ShowNum=4 TitleNum=50 TitlePicWidth=150 TitlePicHeight=150 TheTarget="_self"/></td>
        </tr>
    </tbody>
</table>
<%End();%>