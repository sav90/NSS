﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 387px; width: 832px; margin-left: 3px; background-image: url('../img/ADMIN.jpg');" 
        align="center">
<form id="form1" action="">
<br /><br /><br /><br /><br /><br />
       <div style="width: 859px; font-weight: bold; color: #003366; height: 50px; font-size: x-large;" align="center" 
              >
              Admin id&nbsp;&nbsp;&nbsp; 
              <asp:TextBox ID="uid" runat="server" Width="206px" 
                  Height="25px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" 
                  style="margin-left: 16px"></asp:TextBox>
              <br />
              <br />
          </div>
          <div style="width: 859px; height: 50px; font-weight: bold; color: #003366; font-size: x-large;" align="center" 
              >Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="upass" runat="server" 
                  TextMode="Password" Width="206px" 
                  Height="25px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
          </div>
    <br />
    <div  style="width: 859px; margin-left: 0px;" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
            onclick="Button1_Click" Height="40px" Width="125px" />
        <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
            onclick="Button2_Click" Height="40px" Width="125px" />
        <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderStyle="Solid" 
            BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Back" 
            onclick="Button3_Click" Height="40px" Width="125px" />
        <div align="center">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" 
                Text="admin id or password is wrong" Visible="False" Font-Bold="True" 
                ForeColor="#CC0000" BackColor="White" Height="30px"></asp:Label></div>
       </div>
    <br />
    </form>
    </div>
</asp:Content>

