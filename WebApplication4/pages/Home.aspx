<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Authlayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header style="position:relative;">
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
        <button class="button-primary ">View all</button>
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
    <main>
        <section class="stories-section">
               <!-- Begin iOS -->
      <div class="col-md-4 col-sm-6">
        <div class="card-container manual-flip">
          <div class="card">
            <div class="front">
              <div class="cover">
                <img src="https://bilbo.surge.sh/codepen/download-cards/apple.png" />
              </div>
              <div class="branded">
                <span class="fa fa-apple"></span>
              </div>
              <div class="content">
                <div class="main">
                  <h3 class="use-for faint">Download For</h3>
                  <button type="button" class="btn btn-default btn-block btn-download">iOS</button>
                </div>
                <div class="footer">
                  <button class="btn btn-flip btn-qr" onclick="rotateCard(this)">
                    <i class="fa fa-mail-forward"></i> Get QR Code
                  </button>
                </div>
              </div>
            </div>
            <div class="back">
              <div class="header">
                <h3 class="use-for faint">QR Code</h3>
              </div>
              <div class="content">
                <div id="qrIos" class="qr text-center"></div>
              </div>
              <div class="footer">
                <button class="btn btn-flip" onclick="rotateCard(this)">
                  <i class="fa fa-reply"></i> Back
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End iOS -->
        </section>
    </main>

    <style>
        $(document).ready(function() {
          $('#qrIos').qrcode({
            width: 200,
            height: 200,
            text: "iOS_URL_HERE"
          });
          $('#qrAndroid').qrcode({
            width: 200,
            height: 200,
            text: "DROID_URL_HERE"
          });
          $('#qrWeb').qrcode({
            width: 200,
            height: 200,
            text: "WINDOWS_URL_HERE"
          });
        });

function rotateCard(btn) {
  var $card = $(btn).closest('.card-container');
  console.log($card);
  if ($card.hasClass('hover')) {
    $card.removeClass('hover');
  } else {
    $card.addClass('hover');
  }
}
    </style>
</asp:Content>
