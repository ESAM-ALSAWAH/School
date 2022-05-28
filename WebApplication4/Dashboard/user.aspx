<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Layout.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebApplication4.Dashboard.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DashBoard | user</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div class="row">
<div class="col-md-10 col-md-offset-1" style="margin:auto;">
<div class="form-group">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" AutoGenerateSelectButton="True"

CssClass="table table-bordered table-condensed table-responsive table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" DataKeyNames="Id" OnRowEditing="GridView1_RowEditing"
>
    <Columns>
        <asp:CommandField ButtonType="Button" ShowEditButton="True" CausesValidation="False" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        
    </Columns>
<EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Email], [Gender], [Phone], [Country], [City] FROM [users]"  DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" UpdateCommand="UPDATE [users] SET [Name] = @Name, [Email] = @Email, [Gender] = @Gender, [Phone] = @Phone WHERE [Id] = @Id"></asp:SqlDataSource>

</div>

</div>
</div>


</asp:Content>
