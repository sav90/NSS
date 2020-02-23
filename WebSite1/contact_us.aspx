<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 151px;
        }
    </style>
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>


<div>
<table cellspacing="2" cellpadding="2" border="0">
<tr><td class="style1"></td><td><b style="font-size: large">Contact Us Form</b></td></tr>
<tr><td class="style1"><b style="font-size: large">Name</b></td><td><asp:TextBox ID="txtName" runat="server" /></td></tr>
<tr><td class="style1"><b style="font-size: large">Email</b></td><td><asp:TextBox ID="txtEmail" runat="server" /></td></tr>
<tr><td valign="top" class="style1"><b style="font-size: large">Message</b></td><td> <asp:TextBox ID="txtMessage" Rows="5" Columns="40" TextMode="MultiLine" runat="server"/></td></tr>
<tr><td class="style1"></td><td><asp:button ID="btnSubmit" Text="Submit"  runat="server" 
        onclick="btnSubmit_Click" CssClass="Button" Font-Bold="True" Font-Size="Large"/></td></tr>
<tr><td colspan="2" style=" color:red">
    <asp:Label ID="lbltxt" runat="server" 
        Font-Size="Medium" Visible="False" align="center"></asp:Label>
    </td></tr>
</table>
</div>
</div>

</asp:Content>


