<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestForm.aspx.cs" Inherits="ILD.RequestForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body style="background: url(img/w3.jfif); background-repeat: no-repeat; background-position: center center; background-size: cover;">
        <h1>استمارة الطلب</h1>

        <fieldset>
            <form action="/">
                <div class="personal-details">
                    <div>
                        <label>رقم الطلب:</label><input type="text" readonly>

                        <label>اسم الجهاز:</label><input type="text" readonly>
                        <label>نوع الطلب:</label><input type="text" readonly>
                        <label>اسم المستعير:</label><input type="text" readonly>

                        <label>البريد الالكتروني:</label><input type="text" readonly>
                        <label>الرقم الجامعي / الوظيفي:</label><input type="text" readonly>
                        <label>رقم الجوال:</label><input type="text" readonly>
                        <label>الكلية / القسم:</label><input type="text" readonly>

                        <label>تاريخ الاستلام:</label>
                        <input type="date" id="calender" name=" = calender" required>
                        <label>تاريخ التسليم:</label>
                        <input type="date" id="calender" name=" = calender" required>
                    </div>

                    <div style="justify-content: right;">
                        <label style="width: 35%;">الموافقة على الطلب: </label>

                        <label style="width: 0; margin-left: 20px;">قبول:</label>
                        <input style="width: 10%;" id="indoor" type="radio" name="indoor-outdoor" required>

                        <label style="width: 0; margin-left: 20px;">رفض:</label>
                        <input style="width: 10%;" id="outdoor" type="radio" name="indoor-outdoor" required>
                        <br />
                        <center>
                            <button class="d-flex justify-content-center" type="submit" href="/">طلب حجز </button>
                        </center>
                    </div>
            </form>

        </fieldset>
    </body>
</asp:Content>
