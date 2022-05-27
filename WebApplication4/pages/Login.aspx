﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Authlayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">LogIn</p>

                

                  

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c"><strong>Your Email</strong> </label>
                      <asp:TextBox ID="Email" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example3c"><strong>Password</strong> </label>
                      <asp:TextBox ID="Password"  runat="server" TextMode="Password" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  

                 

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <asp:Button ID="Submit" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" OnClick="LoginButton"/>
                  </div>

                

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
