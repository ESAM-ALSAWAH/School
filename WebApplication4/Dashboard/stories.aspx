<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Layout.Master" AutoEventWireup="true" CodeBehind="stories.aspx.cs" Inherits="WebApplication4.Dashboard.stories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DashBoard | Stories</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <asp:Label ID="Label1" runat="server" CssClass="empty-table" Text="No Records Found"></asp:Label>
     
    <div class="row" >
<div class="col-md-10 col-md-offset-1" style="margin:auto;">
<div class="form-group">

    <h1 style="margin:10px">Story Mangament</h1>
     <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin:1rem 0">
        Create 
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Create Story</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-outline flex-fill mb-0 mt-2">
                      
                    <label class="form-label" for="form3Example1c">Title<strong style="color:red;">*</strong></label>
                <asp:TextBox ID="title" runat="server" CssClass="form-control input"></asp:TextBox>
                </div>
                 <div class="form-outline flex-fill mb-0 mt-2">                      
                    <label class="form-label" for="form3Example1c">Description<strong style="color:red;">*</strong></label>
                    <asp:TextBox ID="description" runat="server" CssClass="form-control input"></asp:TextBox>
                </div>
                <div class="form-outline flex-fill mb-0 mt-2">                      
                    <label class="form-label" for="form3Example1c">File/pdf<strong style="color:red;">*</strong></label>
                    <asp:FileUpload ID="FileUpload1"  runat="server" CssClass="form-control"/>
                </div>
                <div class="form-outline flex-fill mb-0 mt-2">                      
                    <label class="form-label" for="form3Example1c">File/image<strong style="color:red;">*</strong></label>
                    <asp:FileUpload ID="FileImage"  runat="server" CssClass="form-control"/>
                </div>
                
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <asp:Button ID="Button1" runat="server" Text="Create"  CssClass="btn btn-primary " OnClick="Button1_Click" />
                
            </div>
        </div>
        </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
    CssClass="table table-bordered table-condensed table-responsive table-hover" OnRowDeleted="GridView1_RowDeleted" AllowPaging="True" PageSize="5" OnRowDeleting="GridView1_RowDeleting"  >
        <Columns>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" ControlStyle-CssClass="btn btn-warning" HeaderText="Edit Action"    HeaderStyle-Width="14%" ItemStyle-Width="14%"
            FooterStyle-Width="14%"  ControlStyle-ForeColor="White"/>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True"  ControlStyle-CssClass="btn btn-danger" HeaderText="Delete Action"    HeaderStyle-Width="10%" ItemStyle-Width="10%"
            FooterStyle-Width="10%"/>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Label ID="imageLabel" runat="server" Visible="false" Text='<%# ResolveUrl(Eval("Image").ToString()) %>' ></asp:Label>
                      <asp:Image ID="Image1" Height = "50" Width = "50" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Path">
                <ItemTemplate>
                    <asp:HyperLink ID="linkPath" runat="server" NavigateUrl='<%# ResolveUrl(Eval("Path").ToString()) %>' Target="_blank" Text="Link" />
                
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [stories]" DeleteCommand="DELETE FROM [stories] WHERE [Id] =@Id" UpdateCommand="UPDATE [stories] SET [Title] = @Title, [Description] = @Description  WHERE [Id] = @Id"></asp:SqlDataSource>

      </div></div></div>
    

    
    <script >
        document.getElementById("<%=Button1.ClientID%>").addEventListener("click", function () {
            const file = !!document.getElementById("<%=FileUpload1.ClientID %>").value 
            if (!file) {
                document.getElementById("<%=FileUpload1.ClientID%>").classList.add("error-input")
            } else document.getElementById("<%=FileUpload1.ClientID%>").classList.remove("error-input")
            return false;
        })
        document.getElementById("<%=FileUpload1.ClientID %>").setAttribute('accept', 'application/pdf');
        document.getElementById("<%=FileImage.ClientID %>").setAttribute('accept', "image/png, image/gif, image/jpeg");
    </script>
</asp:Content>
 
