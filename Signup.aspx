<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ILD.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5 x">
            
           <div class=" text-center  mt-5 " style="margin-left:25%"><h1 > إنشاء حساب </h1></div>

            <div class=" mt-4" style="">
              
                    <div class="form-group row ">
                        <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم الأول:"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox type="text" ID="Fname" runat="server" class="form-control w-50" name="Fname" required="true"></asp:TextBox>
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
                        <asp:Label ID="Label4" class="col-sm-2 col-form-label text-center" runat="server" Text="القسم:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:DropDownList class="form-control w-50" ID="department" runat="server" required="true">
                                <asp:ListItem Text="اختر" Value="select" />
                                <asp:ListItem Text="الحاسبات  وتقنية المعلومات" Value="الحاسبات وتقنية المعلومات" />
                                <asp:ListItem Text="العلوم" Value="العلوم" />
                                <asp:ListItem Text="الاقتصاد والادارة" Value="الاقتصاد والادارة" />
                                <asp:ListItem Text="الهندسة" Value="الهندسة" />
                                <asp:ListItem Text="الآداب والعلوم الانسانية" Value="الآداب والعلوم الانسانية" />
                                <asp:ListItem Text="السياحة" Value="السياحة" />
                                <asp:ListItem Text="الطب" Value="الطب" />
                                <asp:ListItem Text="الحقوق" Value="الحقوق" />
                                <asp:ListItem Text="طب الأسنان" Value="طب الأسنان" />
                                <asp:ListItem Text="الصيدلة" Value="الصيدلة" />
                                <asp:ListItem Text="علوم الانسان والتصاميم" Value="علوم الانسان والتصاميم" />
                                <asp:ListItem Text="الاتصال والاعلام" Value="الاتصال والاعلام" />
                                <asp:ListItem Text="العلوم التطبيقية" Value="العلوم التطبيقية" />
                                <asp:ListItem Text="التمريض" Value="التمريض" />
                                <asp:ListItem Text="الدراسات العليا التربوية" Value="الدراسات العليا التربوية" />
                                <asp:ListItem Text="علوم التأهيل الطبي" Value="علوم التأهيل" />

                          </asp:DropDownList>
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
                                <asp:TextBox  TextMode="Email"   ID="email"  name="Gmail" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
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
                           <asp:Button class="btn btn-success text-center" style="margin-left:9%" ID="Button1" runat="server" Text="انشاء حساب" OnClick="Button1_Click" />
                        </div>

                    </div>

                </div>
            </div>
        </div>
   <style>
  

   </style>

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
                // Response.redirect("")
                window.location.href = 'Home.aspx';
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


        function errorInfo() {
            Swal.fire({
                title: 'خطأ!',
                text: 'الرجاء تعبئة جميع البيانات',
                icon: 'error',
                buttonsStyling: false,
                confirmButtonText: 'موافق'

            })
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
