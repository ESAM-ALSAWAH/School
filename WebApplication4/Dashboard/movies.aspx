<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Layout.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="WebApplication4.Dashboard.movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <asp:Label ID="Label1" runat="server" CssClass="empty-table" Text="No Records Found"></asp:Label>
     
    <div class="row" >
<div class="col-md-10 col-md-offset-1" style="margin:auto;">
<div class="form-group">

    <h1 style="margin:10px; direction: ltr;">Movies Mangament</h1>
     <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin:1rem 0">
        Create 
    </button>
      
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Insert Movie</h5>
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
                    <label class="form-label" for="form3Example1c">Path<strong style="color:red;">*</strong></label>
                    <asp:TextBox ID="path" runat="server" CssClass="form-control input"></asp:TextBox>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
    CssClass="table table-bordered table-condensed table-responsive table-hover"  AllowPaging="True" PageSize="5" DataKeyNames="Id" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" >
        <Columns>
          
                       
            <asp:CommandField ButtonType="Button" ShowEditButton="True" ControlStyle-CssClass="btn btn-warning" HeaderText="Edit Action"    HeaderStyle-Width="14%" ItemStyle-Width="14%"
            FooterStyle-Width="14%"  ControlStyle-ForeColor="White"/>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True"  ControlStyle-CssClass="btn btn-danger" HeaderText="Delete Action"    HeaderStyle-Width="10%" ItemStyle-Width="10%"
            FooterStyle-Width="10%"/>
            
                       
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            
            <asp:TemplateField HeaderText="Path">
                    
                <EditItemTemplate>
                        <asp:TextBox ID="pathEdit" runat="server" Text='<%# Bind("Path") %>'></asp:TextBox>
                    </EditItemTemplate>
                <ItemTemplate>

                    <asp:HyperLink ID="linkPath" runat="server" NavigateUrl='<%# ResolveUrl(Eval("Path").ToString()) %>' Target="_blank" Text="Link" />
                
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image" >
                
                <ItemTemplate>
                    <asp:Label ID="imageLabel" runat="server" Visible="false" Text='<%# ResolveUrl(Eval("Image").ToString()) %>' ></asp:Label>
                      <asp:Image ID="Image1" Height = "50" Width = "50" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="true"/>
            
            
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [movies]" DeleteCommand="DELETE FROM [movies] WHERE [Id] =@Id" UpdateCommand="UPDATE [movies] SET [Title] = @Title,[Description] = @Description, [Path] = @Path WHERE [Id] = @Id"></asp:SqlDataSource>
    
    
    

      </div></div></div>
    

    <script>
        document.getElementById("<%=FileImage.ClientID %>").setAttribute('accept', "image/png, image/gif, image/jpeg");
        
    </script>
</asp:Content>
