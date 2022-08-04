<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewAdmin.aspx.cs" Inherits="ILD.NewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: 
    center center; background-size: cover;">
    <br>
    <br>
    <h1>اضافة مشرف</h1>
    <br>
    <br>
    <fieldset>
        <form action="/">
            <div class="personal-details">
                <div>
                    <div>
                        <label>الاسم:</label><input type="text" name="name" required></div>
                    <div>
                        <label>الرقم الوظيفي:</label><input type="text" name="name"></div>
                   
                    <div>
                        <label>رقم الجوال:</label><input type="text" name="phoneNum" required>
                    </div>
                    <div>
                        <label>البريد الالكتروني:</label><input type="email" name="Gmail" required>
                    </div>
                    <div>
                        <label>كلمة المرور:</label><input type="password" name="pass" required>
                    </div>
                    <div>
                        <label>تأكيد كلمة المرور:</label><input type="password" name="pass2" required>
                    </div>
                </div>
            </div>
            <center>
                <br>
                <br>
                <button class="d-flex justify-content-center" type="submit" href="/">اضافة</button>
            </center>
        </form>
    </fieldset>
         </body>
</asp:Content>
