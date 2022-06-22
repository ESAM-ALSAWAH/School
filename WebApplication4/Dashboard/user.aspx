<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Layout.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebApplication4.Dashboard.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DashBoard | user</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div class="row">
<div class="col-md-10 col-md-offset-1" style="margin:auto;">
<div class="form-group">
    <h1 style="margin:10px">USERS</h1>
<div style="overflow-x:auto;">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%"

CssClass="table table-bordered table-condensed table-responsive table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" OnRowEditing="GridView1_RowEditing"
>
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        
    </Columns>       
        
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:schoolmangamentConnectionString %>" SelectCommand="SELECT [Name], [Email], [Gender], [Phone], [Country], [City] FROM [users]"></asp:SqlDataSource></div>

</div>

</div>
</div>


</asp:Content>
