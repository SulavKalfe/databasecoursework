<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebCourse.aspx.cs" Inherits="databasecoursework.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Home" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Student" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Enrollment" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Status" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSEID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" ReadOnly="True" SortExpression="COURSEID" />
                <asp:BoundField DataField="COURSETITLE" HeaderText="COURSETITLE" SortExpression="COURSETITLE" />
                <asp:BoundField DataField="COURSEDETAILS" HeaderText="COURSEDETAILS" SortExpression="COURSEDETAILS" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Course ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Course Title"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Course Details"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSEID&quot; = ? AND ((&quot;COURSETITLE&quot; = ?) OR (&quot;COURSETITLE&quot; IS NULL AND ? IS NULL)) AND ((&quot;COURSEDETAILS&quot; = ?) OR (&quot;COURSEDETAILS&quot; IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;COURSEID&quot;, &quot;COURSETITLE&quot;, &quot;COURSEDETAILS&quot;) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSETITLE&quot; = ?, &quot;COURSEDETAILS&quot; = ? WHERE &quot;COURSEID&quot; = ? AND ((&quot;COURSETITLE&quot; = ?) OR (&quot;COURSETITLE&quot; IS NULL AND ? IS NULL)) AND ((&quot;COURSEDETAILS&quot; = ?) OR (&quot;COURSEDETAILS&quot; IS NULL AND ? IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_COURSEID" Type="Decimal" />
                <asp:Parameter Name="original_COURSETITLE" Type="String" />
                <asp:Parameter Name="original_COURSETITLE" Type="String" />
                <asp:Parameter Name="original_COURSEDETAILS" Type="String" />
                <asp:Parameter Name="original_COURSEDETAILS" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="COURSETITLE" Type="String" />
                <asp:Parameter Name="COURSEDETAILS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COURSETITLE" Type="String" />
                <asp:Parameter Name="COURSEDETAILS" Type="String" />
                <asp:Parameter Name="original_COURSEID" Type="Decimal" />
                <asp:Parameter Name="original_COURSETITLE" Type="String" />
                <asp:Parameter Name="original_COURSETITLE" Type="String" />
                <asp:Parameter Name="original_COURSEDETAILS" Type="String" />
                <asp:Parameter Name="original_COURSEDETAILS" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
