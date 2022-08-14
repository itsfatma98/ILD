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
        
        <form runat="server">
            <div class="personal-details">
                <div>
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
                        <label>كلمة المرور:</label><input type="password" name="pass" id="pass" runat="server" required>
                    </div>
                    <div>
                        <label>تأكيد كلمة المرور:</label><input type="password" name="pass2" id="pass2" runat="server" required>
                    </div>
                </div>
            </div>
            <center>
                <br>
                <br>
        
                <asp:Button Class="button" ID="Button3" runat="server" Text="اضافة" OnClick="Button3_Click" />
            </center>
        </form>
           
    </fieldset>
</asp:Content>