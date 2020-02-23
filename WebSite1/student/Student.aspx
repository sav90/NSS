<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="student_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 505px; width: 886px; margin-left: 3px;">
<form id="form1">
    <div style="height: 512px; width: 883px;">
    <div align="center" 
            
            style="color: #FFFFFF; background-color: #003366; font-weight: bold; font-size: xx-large; width: 878px;">
        STUDENT LOGGED</div>
        <div align="right" style="background-color: #003366; width: 878px;">
            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" ForeColor="White" 
                onclick="LinkButton4_Click">Logout</asp:LinkButton>
        </div>
        <div align="center" style="height: 45px" >
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                onclick="LinkButton1_Click">View Activity</asp:LinkButton>
            
            
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                onclick="LinkButton5_Click">Change Password</asp:LinkButton>
        </div>
       </div>
        </form>
</div>

</asp:Content>

