<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewAdmin.aspx.cs" Inherits="ILD.NewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br>
    <br>
    
    <h1>اضافة مشرف</h1>
    <br>
    <br>
    <fieldset>

            <div class="personal-details">
                    <div>
                        <label>الاسم الاول:</label><input type="text" name="name" id="firstname" runat="server" required>
                    </div>
                    <div>
                        <label>الاسم الاخير:</label><input type="text" name="name" id="lastname" runat="server" required>
                    </div>
                    <div>
                        <label>الرقم الوظيفي:</label><input type="text" name="idNum" id="usid" runat="server">
                    </div>

                    <div>
                        <label>رقم الجوال:</label><input type="text" name="phoneNum" id="phone" runat="server" required>
                    </div>
                    <div>
                        <label>البريد الالكتروني:</label><input type="email" name="Gmail" id="email" runat="server" required>
                    </div>
                    <div>
                        <label>كلمة المرور:</label><input type="password" id="pass" runat="server" required>
                    </div>
                    <div>
                        
                        <label>تأكيد كلمة المرور:</label><input type="password" id="pass2" runat="server" required>
                    </div>
                </div>
            <center>
                <br>
                <br>
        
                <asp:Button Class="button" ID="Button3" runat="server" Text="اضافة" OnClick="Button3_Click" />
            </center>           
           
    </fieldset>
      

           <!-- pupup JS -->
             <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
             <script src="sweetalert2.all.min.js"></script>

     <script>
         function success() {
                     Swal.fire({
                         title: 'شكراً لك',
                         text: 'تم إنشاء حساب بنجاح',
                         icon: 'success',
                         buttonsStyling: false,
                         confirmButtonText: 'موافق'
                     }).then(function () {
                         /*Response.redirect("")*/
                         window.location.href = 'Admin.aspx';
                     });

         }


         function error() {
             Swal.fire({
                 title: 'خطأ!',
                 text: 'الرقم الجامعي / الوظيفي مسجل من قبل',
                 icon: 'error',
                 buttonsStyling: false,
                 confirmButtonText: 'موافق'

             }).then(function () {
                 // Response.redirect("")
                 window.location.href = 'Login.aspx';
             });
         }


         function errorPassword() {
             Swal.fire({
                 title: 'خطأ!',
                 text: 'كلمة المرور غير متطابقة',
                 icon: 'error',
                 buttonsStyling: false,
                 confirmButtonText: 'موافق'

             })
         }
     </script>
</asp:Content>