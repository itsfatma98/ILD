<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ILD.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
    <div style="background: url(FormBg.JFIF); background-repeat: no-repeat; background-position: center; background-size: cover;">

        <h1>إنشاء حساب</h1>
        <br>
        <br>
        <div>
            <form action="/">
                <div class="personal-details">
                    <div>
                        <div>
                            <label>الاسم:</label><input type="text" name="name" required>
                        </div>

                        <div>
                            <label>الرقم الجامعي/الوظيفي:</label><input type="text" name="name">
                        </div>
                        <label>الكلية:</label>
                        <select name="الكلية:">
                            <option value=""></option>
                            <option value="computer">الحاسبات وتقنية المعلومات</option>
                            <option value="science">العلوم</option>
                            <option value="econ">الاقتصاد والادارة</option>
                            <option value="eng">الهندسة</option>
                            <option value="hum">الاداب والعلوم الانسانية</option>
                            <option value="tour">السياحة</option>
                            <option value="mid">الطب</option>
                            <option value="rig">الحقوق</option>
                            <option value="dent">طب الاسنان</option>
                            <option value="phar">الصيدلة</option>
                            <option value="design">علوم الانسان والتصاميم</option>
                            <option value="com">الاتصال والاعلام</option>
                            <option value="appli">العلوم التطبيقية</option>
                            <option value="nur">التمريض</option>
                            <option value="edu">الدراسات العليا التربوية</option>
                            <option value="qual">علوم التأهيل الطبي</option>
                        </select>
                        <div>
                            <label>رقم الجوال:</label><input type="text" name="phoneNum" required></div>
                        <div>
                            <label>البريد الالكتروني:</label><input type="text" name="Gmail" required></div>
                        <div>
                            <label>كلمة المرور:</label><input type="password" name="pass" required></div>
                        <div>
                            <label>تأكيد كلمة المرور:</label><input type="password" name="pass2" required></div>
                    </div>
                </div>
                <center>
                    <br>
                    <br>
                    <button class="d-flex justify-content-center" type="submit" href="/">إنشاء حساب</button>
                </center>
            </form>
        </div>
    </div>



</asp:Content>
