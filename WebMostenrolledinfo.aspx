<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebMostenrolledinfo.aspx.cs" Inherits="databasecoursework.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Home" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Student" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Enrollment" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Status" />
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Month"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server">Provide in 1-12</asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
