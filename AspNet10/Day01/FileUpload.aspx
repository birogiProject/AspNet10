<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FileUpload.aspx.vb" Inherits="AspNet10.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FileUpload コントロール</title>
</head>
<body>
    <form id="form1" runat="server">
        登録ファイル：<asp:FileUpload ID="upFile" runat="server" />
        <p>
            ファイルの上書き：</p>
        <asp:RadioButtonList ID="rdoOver" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="permit">許可</asp:ListItem>
            <asp:ListItem Selected="True" Value="forbid">禁止</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="btnUpload" runat="server" Text="アップロード" />
        <p>
            <asp:Literal ID="ltrResult" runat="server" Text="△"></asp:Literal>
        </p>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>
