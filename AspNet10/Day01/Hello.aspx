<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hello.aspx.vb" Inherits="AspNet10.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>こんにちは、ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            名前：<asp:TextBox ID="txtName" runat="server">
</asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="送信" />
        </p>
        <p>
            <asp:Label ID="lblGreet" runat="server" Text="△"></asp:Label>
        </p>
        <p>
            血液型：<asp:RadioButtonList ID="rdoBtnLst1" runat="server">
                <asp:ListItem Selected="True" Value="A">A型</asp:ListItem>
                <asp:ListItem Value="B">B型</asp:ListItem>
                <asp:ListItem Value="O">O型</asp:ListItem>
                <asp:ListItem Value="AB">AB型</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            好きなワイン：<asp:CheckBoxList ID="chks" runat="server">
                <asp:ListItem>赤</asp:ListItem>
                <asp:ListItem>白</asp:ListItem>
                <asp:ListItem>ロゼ</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="エンジニアである：" TextAlign="Left" />
        </p>
        <p>
            血液型：<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True"> </asp:ListItem>
                <asp:ListItem Value="A">A型</asp:ListItem>
                <asp:ListItem Value="B">B型</asp:ListItem>
                <asp:ListItem Value="AB">AB型</asp:ListItem>
                <asp:ListItem Value="O">O型</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            好きなワイン：</p>
        <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple">
            <asp:ListItem Selected="True">赤</asp:ListItem>
            <asp:ListItem Selected="True">白</asp:ListItem>
            <asp:ListItem Selected="True">ロゼ</asp:ListItem>
        </asp:ListBox>
    </form>
</body>
</html>
