<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPass2.aspx.cs" Inherits="ILD.ForgetPass2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: center center; background-size: cover;">
    <br>
    <br>
    <h1>تعيين كلمة مرور جديدة </h1>
    <br>
    <br>
    <fieldset>
        <br>
        <br>
        <form action="/">
            <div class="personal-details">
                  <p style="font-size:25px; text-align:right; margin-right:123px">تم ارسال رمز التفعيل الى بريدك الالكتروني الرجاء ادخال رمز التفعيل</p>
                <div>
                    <div>
                        <label> ادخل رمز التفعيل:</label><input type="text" name="Gmail" required>
                    </div>
                </div>
            </div>
            <center>
                <br>
                <br>
                <button class="d-flex justify-content-center" type="submit" href="/">إرسال</button>
            </center>
        </form>
    </fieldset>
</body>
</asp:Content>
