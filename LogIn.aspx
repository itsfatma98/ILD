<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ILD.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: 
    center center; background-size: cover;">
    <h1>تسجيل الدخول</h1>
    <br>
    <br>
    <fieldset>
        <form action="/">
            <div class="personal-details">
                <div>
                    <div>
                        <label>الرقم الجامعي/الوظيفي:</label><input type="text" name="name" required></div>
                    <div>
                        <label>كلمة المرور:</label><input type="text" name="name"></div>
                    <span class="psw"><a href="#">هل نسيت كلمة المرور؟</a></span>
                </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <center>
                <button class="d-flex justify-content-center" type="submit" href="/">تسجيل الدخول</button>
                <button class="d-flex justify-content-center" style="background-color: #B34D21" type="submit" href="/">انشاء حساب جديد</button>
                
            </center>
        </form>
    </fieldset>
        </body>
</asp:Content>
