<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebStudentfullinfo.aspx.cs" Inherits="databasecoursework.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 160px">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Home" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Student" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Enrollment" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Status" />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENTID" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="STUDENTID" HeaderText="STUDENTID" ReadOnly="True" SortExpression="STUDENTID" />
                    <asp:BoundField DataField="STUDENTNAME" HeaderText="STUDENTNAME" SortExpression="STUDENTNAME" />
                </Columns>
            </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="StuentID"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENTID&quot;, &quot;STUDENTNAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
