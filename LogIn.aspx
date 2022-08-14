<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ILD.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
    <fieldset>
   <div class="container-fluid">
        <div class="d-flex flex-column text-center justify-content-center  px-xl-5">
            <div class="text-center mt-5 mr-5 " >
                 <h1> تسجيل الدخول </h1>
             </div>
            
             <div class="" style="vertical-align:central">
                 <div  class="mt-5">
                     <div class="form-group row ">
                                <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي/الوظيفي:"></asp:Label>
                                <div class="col-sm-10" >
                                    <input type="text"  ID="usid" class="form-control w-50" runat="server" required>
                                </div>
                    </div>
                     

                    <div class="form-group row ">
                                <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="كلمة المرور:"></asp:Label>
                                <div class="col-sm-10" >
                                    <input type="password" ID="passw" class="form-control w-50" runat="server" required></div>
                                </div>     
                     </div>

                   <div class="form-group row text-left" style="margin-left:15%">
                        <div class="col-sm-10 "  >
                            <asp:linkButton ID="Button1" runat="server" Text="إنشاء حساب" OnClick="SignUp_Click" />
                            <asp:linkButton ID="LinkButton1" runat="server" Style="margin-right: 20%;"  Text="هل نسيت كلمة السر؟" OnClick="password" />
                        </div>
                         
                    </div >

                      
                      
                     <div class="form-group row mt-2 w-50 ">
                              <asp:Label ID="Label3" class="col-sm-2" runat="server" ></asp:Label>
                             <div class="col-sm-10 text-center" style="padding-right:25%">

                                  <asp:Button ID="Button2" class="btn btn-success"  runat="server" Text="تسجيل الدخول" OnClick="login_Click" />
                                 
                            </div>
                        <asp:Label ID="errorlabel" runat="server" Text="Label" Visible="false"></asp:Label>
                     </div>
                
                        
                

              </div>

        </div>
    </div>
        </fieldset>

    <!-- pupup JS -->
             <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
             <script src="sweetalert2.all.min.js"></script>
    <script>
        function error() {
            Swal.fire({
                title: 'خطأ!',
                text: 'الرقم الجامعي / الوظيفي غير مسجل من قبل',
                icon: 'error',
                buttonsStyling: false,
                confirmButtonText: 'موافق'

            }).then(function () {
                // Response.redirect("")
                window.location.href = 'Login.aspx';
            });
        }


        function errorInfo() {
            Swal.fire({
                title: 'خطأ!',
                text: 'الرقم السري غير صحيح',
                icon: 'error',
                buttonsStyling: false,
                confirmButtonText: 'موافق'

            })
        }
    </script>
</asp:Content>