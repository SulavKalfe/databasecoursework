<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebStatus.aspx.cs" Inherits="databasecoursework.WebForm2" %>

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
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LESSONID,STUDENTID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="LESSONID" HeaderText="LESSONID" SortExpression="LESSONID" ReadOnly="True" />
                    <asp:BoundField DataField="STUDENTID" HeaderText="STUDENTID" SortExpression="STUDENTID" ReadOnly="True" />
                    <asp:BoundField DataField="LESSONSTATUS" HeaderText="LESSONSTATUS" SortExpression="LESSONSTATUS" />
                    <asp:BoundField DataField="LASTACCESSEDDATE" HeaderText="LASTACCESSEDDATE" SortExpression="LASTACCESSEDDATE" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Lesson ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Lesson Status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Last Accessed Date"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Edit" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    DeleteCommand="DELETE FROM &quot;STATUS&quot; WHERE &quot;LESSONID&quot; = ? AND &quot;STUDENTID&quot; = ?"
    InsertCommand="INSERT INTO &quot;STATUS&quot; (&quot;LESSONID&quot;, &quot;STUDENTID&quot;, &quot;LESSONSTATUS&quot;, &quot;LASTACCESSEDDATE&quot;) VALUES (?, ?, ?, ?)"
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM &quot;STATUS&quot;"
    UpdateCommand="UPDATE &quot;STATUS&quot; SET &quot;LESSONSTATUS&quot; = ?, &quot;LASTACCESSEDDATE&quot; = ? WHERE &quot;LESSONID&quot; = ? AND &quot;STUDENTID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="LESSONID" Type="String" />
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LESSONID" Type="String" />
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                    <asp:Parameter Name="LESSONSTATUS" Type="String" />
                    <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LESSONSTATUS" Type="String" />
                    <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
                    <asp:Parameter Name="LESSONID" Type="String" />
                    <asp:Parameter Name="STUDENTID" Type="Decimal" />
                </UpdateParameters>
</asp:SqlDataSource>

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
