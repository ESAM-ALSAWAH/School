<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Layout.Master" AutoEventWireup="true" CodeBehind="stories.aspx.cs" Inherits="WebApplication4.Dashboard.stories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DashBoard | Stories</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
    <asp:Button ID="Button1" runat="server" Text="Upload"  CssClass="btn btn-primary btn-lg" OnClick="Button1_Click"/>

    

</asp:Content>
