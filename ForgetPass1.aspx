<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPass1.aspx.cs" Inherits="ILD.ForgetPass1" %>
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
                <div>
                    <div>
                        <label> ادخل بريدك الالكتروني:</label><input type="email" name="Gmail" required>
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
