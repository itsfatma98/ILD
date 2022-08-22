<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ILD.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    
<link href="customizedCSS/FormsStyle.css" rel="stylesheet" />--%>


     <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5">
            
           <div class=" text-center  mt-5 " style="margin-left:25%"><h1 > تسجيل الدخول </h1></div>

            <div class="box mt-5" style="">
              
                    <div class="form-group row ">
                        <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي/الوظيفي:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="userid" class="form-control w-50" runat="server" required="true" ></asp:TextBox>   
                         </div>
                    </div>
                    <div class="form-group row ">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="كلمة المرور:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="passr" class="form-control w-50" runat="server" required="true" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                <asp:Label ID="errorlabel" runat="server" Text="Label" Visible="false"></asp:Label>

                <div class="d-flex justify-content-center">
                    <asp:linkButton ID="LinkButton1" runat="server" class=" text-center mt-4"  style="margin-left:30%" Text="هل نسيت كلمة السر؟" OnClick="password" />

                </div>
                <div class="d-flex justify-content-center">
                     <asp:linkButton ID="Button1" class=" text-right  mt-4 mb-4"  runat="server" style="margin-left:30%" Text="إنشاء حساب" OnClick="SignUp_Click" />
                </div>
      

                    <div class="form-group row text-center  mb-4">
                        <div class="col-sm-10 ">
                             <asp:Button ID="Button2" class="btn btn-success " style="margin-left:15%"  runat="server" Text="تسجيل الدخول" OnClick="login_Click" />
                        </div>

                    </div>
                    
           
            </div>
         
      </div>
         </div>


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