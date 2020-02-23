<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="photo.aspx.cs" Inherits="photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 958px;
            height: 2px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <img src="NewFolder1/image%201.jpg" alt="img1" height="200px" 
        style="width: 401px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <img src="NewFolder1/image%202.jpeg"alt="img2" 
        height="200px" style="width: 421px; margin-left:0px"/>


    <img src="NewFolder1/image%203.jpeg" style="height: 245px; width: 397px" /><img 
        src="NewFolder1/image%204.jpeg"alt="img3" 
        style="height: 260px; width: 450px; margin-left: 17px;"1px" />
    

</asp:Content>


