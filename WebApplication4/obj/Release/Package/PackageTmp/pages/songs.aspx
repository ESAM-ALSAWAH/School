<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Authlayout.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="WebApplication4.pages.movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Songs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header style="position:relative;" class="home-header">
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
        <img src="../assets/shape1.png" alt="shape" style="position:absolute;
left:0;top:40%;"/>
                <img src="../assets/shape3.png" alt="shape" style="position:absolute;
        left:10%;top:20%;" class="animation-shape"/>
           <img src="../assets/shape4.png" alt="shape" style="position:absolute;
right:0;top:60%;"/>

        <div class="container">
  <div class="row" style="">
    <div class="col-12 col-md-6 col-lg-6" data-aos="fade-right"  data-aos-duration="2000" style="margin-block:2rem;">
      <h1 style="font-size:55px;">Diverse Songs</h1>
        <h4 style="font-size:25px; margin-block:2rem;"> We have a variety of songs that are suitable <br /> for all ages of children</h4>
        <button class="button-primary " id="btn_viewall">View all</button>
    </div>
    <div class="col-12 col-md-6 col-lg-6"  data-aos="fade-left"  data-aos-duration="2000">
      <div style="display:flex;align-items:center;gap:1rem; position:relative;">
          <img src="../assets/songs_header.png" alt="image1" style="width:100%;max-height:400px;height:400px; z-index:100""/>
          
            <img src="../assets/shape2.png" alt="shape" style="position:absolute;
                right:0%;top:-30%; "/>
          <img src="../assets/shape5.png" alt="shape" style="position:absolute;
                left:-5%;bottom:10%; " class="animation-shape5"/>
      </div>
    </div>
    
  </div>
</div>
    </header>
      <div class="container" style="padding:2rem 0;" >
                <h1 style="text-align:center;margin:1rem 0;color:#0e1133;">Songs</h1>
                <div class="row" style="display:flex; align-items:center;grid-gap:10px; flex-wrap:wrap;">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate >
                    
                    <div class="card-container col-12 col-md-4 col-lg-4" style="max-width:400px" data-aos="fade-up"  data-aos-duration="2000">
                        <div class="image-container">
                                         <asp:Image ID="Image1" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>'  />
                            </div>
                                <div style="padding:10px 20px;">
                                <h5 style="text-align:center"><%# Eval("Title") %></h5>
                             
                                <asp:HyperLink ID="linkPath" runat="server" NavigateUrl='<%# ResolveUrl(Eval("Path").ToString()) %>' Target="_blank"   CssClass="button-primary  width-fit flex-row-link">
                                    <i class='bx bx-music'></i>
                                    Listen
                                    </asp:HyperLink>
                                    </div>
                            
                    
                  </div>
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Path], [Image] FROM [songs]"></asp:SqlDataSource>
                    </div></div>

    <script>
        document.getElementById("btn_viewall").onclick = function (e) {
            e.preventDefault();
            window.scrollTo({
                top: 600,
                behavior:"smooth",
            })
        }
    </script>
</asp:Content>
