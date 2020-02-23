<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_view.aspx.cs" Inherits="student_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="u_id" DataSourceID="SqlDataSource1" 
            Height="164px" Width="530px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="u_id" HeaderText="u_id" ReadOnly="True" 
                    SortExpression="u_id" />
                <asp:BoundField DataField="u_pass" HeaderText="u_pass" 
                    SortExpression="u_pass" />
                <asp:BoundField DataField="c_pass" HeaderText="c_pass" 
                    SortExpression="c_pass" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:NSSConnectionString %>" 
            DeleteCommand="DELETE FROM [Student_signup] WHERE [u_id] = @original_u_id AND [name] = @original_name AND [email] = @original_email AND [gender] = @original_gender AND [u_pass] = @original_u_pass AND [c_pass] = @original_c_pass" 
            InsertCommand="INSERT INTO [Student_signup] ([name], [email], [gender], [u_id], [u_pass], [c_pass]) VALUES (@name, @email, @gender, @u_id, @u_pass, @c_pass)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Student_signup]" 
            UpdateCommand="UPDATE [Student_signup] SET [name] = @name, [email] = @email, [gender] = @gender, [u_pass] = @u_pass, [c_pass] = @c_pass WHERE [u_id] = @original_u_id AND [name] = @original_name AND [email] = @original_email AND [gender] = @original_gender AND [u_pass] = @original_u_pass AND [c_pass] = @original_c_pass">
            <DeleteParameters>
                <asp:Parameter Name="original_u_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_u_pass" Type="String" />
                <asp:Parameter Name="original_c_pass" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="u_id" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="c_pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="c_pass" Type="String" />
                <asp:Parameter Name="original_u_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_u_pass" Type="String" />
                <asp:Parameter Name="original_c_pass" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
