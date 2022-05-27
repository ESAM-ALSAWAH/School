<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Authlayout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication4.pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="section-form" style="background-color: #eee;">
  <div class="container h-100 main active">
    <div class="row d-flex justify-content-center align-items-center h-100">
        <asp:HiddenField id="userID" runat="server"/>
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Student registration form</p>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      
                      <label class="form-label" for="form3Example1c">The child's full name <strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="Name" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Your Email <strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="Email" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4c">Password <strong style="color:red;">*</strong></label>
&nbsp;<asp:TextBox ID="Password"  runat="server" TextMode="Password" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4c">The child's Gender <strong style="color:red;">*</strong></label>
                        <asp:DropDownList ID="DropGender" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>
                  

                  

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
            
                        <button class="next-btn btn btn-primary btn-lg">Next</button> 
            
                        
            
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
<div class="container h-100 main ">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Student registration form</p>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      
                      <label class="form-label" for="form3Example1c">Date Of Birth<strong style="color:red;">*</strong></label>
                      <div class="d-flex flex-row align-items-center mb-4">
                          <div class="d-flex flex-column " style="width:100%">
                              <label class="form-label" for="form3Example1c">Year<strong style="color:red;">*</strong></label>
                              <asp:DropDownList ID="DropYear" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">                         
                                                </asp:DropDownList>
                          </div>
                          <div class="d-flex flex-column " style="width:100%">
                              <label class="form-label" for="form3Example1c">Month<strong style="color:red;">*</strong></label>
                              <asp:DropDownList ID="DropMonth" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">                         
                                                </asp:DropDownList>
                          </div><div class="d-flex flex-column " style="width:100%">
                              <label class="form-label" for="form3Example1c">Day<strong style="color:red;">*</strong></label>
                              <asp:DropDownList ID="DropDay" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">                         
                                                </asp:DropDownList>
                          </div>
                          
                          
                        </div>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      
                      <label class="form-label" for="form3Example1c">Father full name <strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="FatherName" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Mother full name<strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="MotherName" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4cd">The admin<strong style="color:red;">*</strong></label>
                      <asp:DropDownList ID="DropDownAdmin" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Mother</asp:ListItem>
                          <asp:ListItem>Father</asp:ListItem>
                          <asp:ListItem>Father & Mather</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>

                  

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button class="prev-btn btn btn-primary btn-lg" style="margin-right:20px;">Previous</button>
                      <button class="next-btn btn btn-primary btn-lg">next</button>
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
          
  <div class="container h-100 main ">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Student registration form</p>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      
                      <label class="form-label" for="form3Example1c">Phone <strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="phone" TextMode="Number" runat="server" CssClass="form-control input"></asp:TextBox>

                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Country<strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="country" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
<label class="form-label" for="form3Example3c">City<strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="city" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Detailed address of the child's residence<strong style="color:red;">*</strong></label>
                      <asp:TextBox ID="addres" runat="server" CssClass="form-control input"></asp:TextBox>
                    </div>
                  </div>
                  

                  

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button class="prev-btn btn btn-primary btn-lg" style="margin-right:20px;">Previous</button>
                      <button class="next-btn btn btn-primary btn-lg">next</button>
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
  <div class="container h-100 main ">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Student registration form</p>

                   <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4c">Choose the language you want to teach your child<strong style="color:red;">*</strong></label>
                        <asp:DropDownList ID="DropLanguage" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Arabic</asp:ListItem>
                          <asp:ListItem>English</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Can your child speak it?<strong style="color:red;">*</strong></label>
                      <asp:DropDownList ID="DropCanSpeak" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Yes</asp:ListItem>
                          <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Have you studied it before?<strong style="color:red;">*</strong></label>
                      <asp:DropDownList ID="DropStudied" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Yes</asp:ListItem>
                          <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">What is his/her level?<strong style="color:red;">*</strong></label>
                      <asp:DropDownList ID="DropLevel" runat="server" CssClass="select" BackColor="White" Height="40px" Width="100%" ClientIDMode="Static" EnableTheming="False">
                          <asp:ListItem>Beginner</asp:ListItem>
                          <asp:ListItem>Middle</asp:ListItem>
                          <asp:ListItem>Good</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>

                  

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button class="prev-btn btn btn-primary btn-lg" style="margin-right:20px;">Previous</button>
                      <asp:Button ID="Submit" runat="server" Text="Register Now" CssClass="btn btn-primary btn-lg" OnClick="RegisterButton"/>
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
        
    

    <script src="../js/main.js" type="text/javascript"></script>

</asp:Content>
