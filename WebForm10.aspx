<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="databasecoursework.WebForm10" %>


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
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Student full info" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Course full info" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Instructor" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Lesson" />
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Course" />
        </p>
    </form>
</body>
</html>
