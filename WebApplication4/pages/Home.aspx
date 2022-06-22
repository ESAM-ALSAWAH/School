<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Authlayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
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
    <div class="col-12 col-md-6 col-lg-6" data-aos="fade-right"  data-aos-duration="2000">
      <h1 style="font-size:55px;">Diverse library</h1>
        <h4 style="font-size:25px; margin-block:2rem;"> (stories - movies - songs)</h4>
        <button class="button-primary " id="btn_viewall">View all</button>
    </div>
    <div class="col-12 col-md-6 col-lg-6"  data-aos="fade-left"  data-aos-duration="2000">
      <div style="display:flex;align-items:center;gap:1rem; position:relative;">
          <img src="../assets/hero1.jpg" alt="image1" style="width:55%;z-index:100""/>
          <img src="../assets/hero2.jpg" alt="image2" style="width:45%; z-index:100"/>
            <img src="../assets/shape2.png" alt="shape" style="position:absolute;
                right:0%;top:-30%; "/>
          <img src="../assets/shape5.png" alt="shape" style="position:absolute;
                left:-5%;bottom:10%; " class="animation-shape5"/>
      </div>
    </div>
    
  </div>
</div>
    </header>
    <main style="padding:2rem">
        <section class="stories-section">
                <div style="height:250px;padding:10px;margin:2rem 0; background:url('../assets/section.jpg') ;background-size:cover;" data-aos="fade-up">
                    <h1 style="text-align:center;margin:1rem 0;color:#fff; font-size:60px">Stories</h1>
                    <h6 style="text-align:center;margin:1rem 0;color:#fff;">Variety of stories</h6>
                </div>
            <div class="container">
                <div class="row" style="display:flex; align-items:center;grid-gap:10px; flex-wrap:wrap;">
    
            <asp:DataList ID="DataList1" runat="server" DataSourceID="sqlDataStories">
                <ItemTemplate >
                    
                    <div class="card-container col-12 col-md-6 col-lg-6" data-aos="fade-right" data-aos-duration="2000">
                        <div class="image-container">
                                         <asp:Image ID="Image1" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>'  />
                            </div>
                                <div style="padding:10px 20px;">
                                <h5 style="text-align:center"><%# Eval("Title") %></h5>
                                <span style="text-align:center;display:block;margin-bottom:1rem"><%# Eval("Description") %></span>
                              <asp:HyperLink ID="linkPath" runat="server" NavigateUrl='<%# ResolveUrl(Eval("Path").ToString()) %>' Target="_blank"   CssClass="button-primary  width-fit flex-row-link" >
                                    <i class='bx bx-book-reader'></i>
                                    Read Story
                                    </asp:HyperLink>
                                    </div>
                            
                    
                  </div>
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="sqlDataStories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 2 [Title], [Description], [Image], [Path] FROM [stories]"></asp:SqlDataSource>

                    <a href="stories.aspx" class="btn btn-primary " style="width:fit-content; margin:1rem auto;">More Story</a>
        </div></div>        
            </section>

           <section class="movies-section">
                <div style="height:250px;padding:10px;margin:2rem 0; background:url('../assets/section.jpg') ;background-size:inherit; background-position:right;" data-aos="fade-up">
                    <h1 style="text-align:center;margin:1rem 0;color:#fff; font-size:60px">Movies</h1>
                    <h6 style="text-align:center;margin:1rem 0;color:#fff;">We have a variety of useful and entertaining animations for all ages</h6>
                </div>
               <div class="container">
                
                <div class="row" style="display:flex; align-items:center;grid-gap:10px; flex-wrap:wrap;">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Top 2 * FROM [movies]"></asp:SqlDataSource>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
              <div class="card-container col-12 col-md-6 col-lg-6" data-aos="fade-right" data-aos-duration="2000">
                        <div class="image-container">
                                         <asp:Image ID="Image1" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>' CssClass="image-card-hover" />
                            </div>
                                <div style="padding:10px 20px;">
                                <h5 style="text-align:center"><%# Eval("Title") %></h5>
                                <span style="text-align:center;display:block;margin-bottom:1rem"><%# Eval("Description") %></span>
                              <asp:HyperLink ID="linkPath" runat="server" NavigateUrl='<%# ResolveUrl(Eval("Path").ToString()) %>' Target="_blank" CssClass="button-primary  width-fit flex-row-link" >
                                    <i class='bx bx-movie'></i>
                                    Watch
                                    </asp:HyperLink>
                                    </div>
                            
                    
                  </div>
        </ItemTemplate>
    </asp:DataList>
                    <a href="movies.aspx" class="btn btn-primary " style="width:fit-content; margin:1rem auto;">More Movies</a>
                    </div></div>
           </section>

                   <section class="songs-section">
                <div style="height:250px;padding:10px;margin:2rem 0; background:url('../assets/section.jpg') ;background-size:inherit; background-position:left;" data-aos="fade-up">
                    <h1 style="text-align:center;margin:1rem 0;color:#fff; font-size:60px">Songs</h1>
                    <h6 style="text-align:center;margin:1rem 0;color:#fff;">We have a variety of useful and entertaining animations for all ages</h6>
                </div>
               <div class="container">
                
                <div class="row" style="display:flex; align-items:center;grid-gap:10px; flex-wrap:wrap;">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Top 2 * FROM [songs]"></asp:SqlDataSource>
    <asp:DataList ID="DataList3" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource3">
        <ItemTemplate>
              <div class="card-container col-12 col-md-6 col-lg-6" data-aos="fade-right" data-aos-duration="2000">
                        <div class="image-container">
                                         <asp:Image ID="Image1" runat="server" 
             ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>' CssClass="image-card-hover" />
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
                    <a href="songs.aspx" class="btn btn-primary " style="width:fit-content; margin:1rem auto;">More Songs</a>
                    </div></div>
           </section>
    </main>

    <script>
        document.getElementById("btn_viewall").onclick = function (e) {
            e.preventDefault();
            window.scrollTo({
                top: 600,
                behavior: "smooth",
            })
        }
    </script>
</asp:Content>
