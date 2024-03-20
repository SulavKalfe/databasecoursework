<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebEnrollment.aspx.cs" Inherits="databasecoursework.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 120px">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Home" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Student" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Enrollment" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Status" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENTID,COURSEID" DataSourceID="SqlDataSource1" Width="611px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="STUDENTID" HeaderText="STUDENTID" ReadOnly="True" SortExpression="STUDENTID" />
                    <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" ReadOnly="True" SortExpression="COURSEID" />
                    <asp:BoundField DataField="ENROLLDATE" HeaderText="ENROLLDATE" SortExpression="ENROLLDATE" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="StudentID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="CourseID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Enroll Date"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ENROLLMENT&quot; WHERE &quot;STUDENTID&quot; = ? AND &quot;COURSEID&quot; = ?" InsertCommand="INSERT INTO &quot;ENROLLMENT&quot; (&quot;STUDENTID&quot;, &quot;COURSEID&quot;, &quot;ENROLLDATE&quot;) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ENROLLMENT&quot;" UpdateCommand="UPDATE &quot;ENROLLMENT&quot; SET &quot;ENROLLDATE&quot; = ? WHERE &quot;STUDENTID&quot; = ? AND &quot;COURSEID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                    <asp:Parameter Name="COURSEID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                    <asp:Parameter Name="COURSEID" Type="Decimal" />
                    <asp:Parameter Name="ENROLLDATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENROLLDATE" Type="DateTime" />
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                    <asp:Parameter Name="COURSEID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
