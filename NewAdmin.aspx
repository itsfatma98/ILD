<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="NewAdmin.aspx.cs" Inherits="ILD.NewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">

        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5 x">

            <div class=" text-center  mt-5 " style="margin-left:25%"><h1 > إضافة مشرف </h1></div>

            <div class=" mt-4 ">
   
                    <div class="form-group row ">
                         <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم الأول:"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox  ID="Fname" runat="server" class="form-control w-50" name="Fname" required="true"></asp:TextBox>
                         </div>
                    </div>

                    
                    <div class="form-group row ">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم الأخير:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox type="text" ID="Lname" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                        </div>
                    </div>

                   <div class="form-group row ">
                        <asp:Label ID="Label3" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي/الوظيفي:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox type="text" ID="id" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                        </div>
                    </div>

                     <div class="form-group row ">
                            <asp:Label ID="Label5" class="col-sm-2 col-form-label text-center" runat="server" Text="رقم الجوال:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="phone" TextMode="Phone" name="phoneNum" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                            </div>
                    </div>
                    
                    <div class="form-group row ">
                            <asp:Label ID="Label6" class="col-sm-2 col-form-label text-center" runat="server" Text="البريد الإلكتروني:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox  TextMode="Email"  ID="email"  name="Gmail" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                            </div>
                    </div>

                    <div class="form-group row ">
                        <asp:Label ID="Label7" class="col-sm-2 col-form-label text-center" runat="server" Text="كلمة المرور:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox class="form-control w-50" ID="password" runat="server" name="pass" required="true" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row ">
                        <asp:Label ID="Label8" class="col-sm-2 col-form-label text-center" runat="server" Text="تأكيد كلمة المرور:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox class="form-control w-50" ID="confirm_password" runat="server" name="pass2" required="true" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row text-center  mb-4">
                        <div class="col-sm-10 ">
                           <asp:Button class="btn btn-success text-center" style="margin-left:9%" ID="Button1" runat="server" Text="إضافة المشرف" OnClick="Button3_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    
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
                 window.location.href = 'AdminProfile.aspx';
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