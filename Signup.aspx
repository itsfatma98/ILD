<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ILD.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center mt-5">
        <h2>إنشاء حساب</h2>
    </div>
    <fieldset>
        <div class="personal-details">
            <div>
                <asp:Label runat="server">الاسم الأول:</asp:Label><asp:TextBox type="text" ID="Fname" runat="server" name="Fname" required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">الاسم الأخير:</asp:Label><asp:TextBox type="text" ID="Lname" runat="server" name="Lname" required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">الرقم الجامعي/الوظيفي:</asp:Label><asp:TextBox type="text" ID="id" runat="server" name="name" required="true"></asp:TextBox>
            </div>
            <asp:Label runat="server">الكلية:</asp:Label>

            <asp:DropDownList class="form-control" ID="department" runat="server" required="true">
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

            <div>
                <asp:Label runat="server">رقم الجوال:</asp:Label><asp:TextBox type="text" ID="phone" runat="server" name="phoneNum" required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">البريد الالكتروني (الجامعي):</asp:Label><asp:TextBox type="email" ID="email" runat="server" name="Gmail" required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">كلمة المرور:</asp:Label><asp:TextBox type="password" ID="password" runat="server" name="pass" required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">تأكيد كلمة المرور:</asp:Label><asp:TextBox type="password" ID="confirm_password" runat="server" name="pass2" required="true"></asp:TextBox>

            </div>

        </div>
        <center>
            <br>
            <br>
            <div>
                <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="انشاء حساب" OnClick="Button1_Click" />
            </div>



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
