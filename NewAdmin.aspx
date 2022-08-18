<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="NewAdmin.aspx.cs" Inherits="ILD.NewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="justify-content: center">
        <div class=" container d-flex flex-column px-xl-5 ">
            <div class="text-center mt-5 mr-5 mb-5">
              <h1>اضافة مشرف</h1>  
            </div>

            <div class=" x ">
                <div class="col-md-2"></div>
                <div class="col-md-8 mt-5 ">  
   
                    <div class="form-group row ">
                        <label>الاسم الاول:</label><input type="text" name="name" id="firstname" runat="server" required>
                    </div>

                    <div class="form-group row ">
                        <label>الاسم الاخير:</label><input type="text" name="name" id="lastname" runat="server" required>
                    </div>

                    <div class="form-group row ">
                        <label>الرقم الوظيفي:</label><input type="text" name="idNum" id="usid" runat="server">
                    </div>

                    <div class="form-group row ">
                        <label>رقم الجوال:</label><input type="text" name="phoneNum" id="phone" runat="server" required>
                    </div>

                    <div class="form-group row ">
                        <label>البريد الالكتروني:</label><input type="email" name="Gmail" id="email" runat="server" required>
                    </div>

                    <div class="form-group row ">
                        <label>كلمة المرور:</label><input type="password" id="pass" runat="server" required>
                    </div>

                    <div class="form-group row ">                        
                        <label>تأكيد كلمة المرور:</label><input type="password" id="pass2" runat="server" required>
                    </div>
          
         <div class="form-group row mt-2" style="justify-content: left;">
                           <div class="col-sm-10">
                <asp:Button class="btn btn-success" Style="margin-left: 80px;" ID="Button3" runat="server"  OnClick="Button3_Click" Text="اضافة" />
           </div> 
         </div><%----%>
      
 </div> </div> </div> </div>

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