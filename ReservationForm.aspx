﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReservationForm.aspx.cs" Inherits="ILD.ReservationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: 
    center center; background-size: cover;">
    <h1>نموذج طلب حجز </h1>

    <fieldset>
        <form action="/">

            <div class="personal-details">
                <div>

                    <div>
                        <label>الاسم :</label><input type="text" name="name" required></div>

                    <div>
                        <label>الرقم الجامعي/الوظيفي:</label><input type="text" name="name"></div>
                    <label>الكلية:</label>
                    <select name="الكلية:">
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
                        <label>التاريخ:</label><input type="date" name="calender" name="calender"></div>

                    <div>
                       <input type="checkbox" style="width: 5%;" name="إقرار[]" id="إقرار" placeholder="إقرار" required/>
                       <label style="width: 90%;" >أتعهد بالمحافظة على الجهاز وملحقاته واستعماله بصورة جيدة</label><br>
                    </div>
                    <center>

                    <button class="d-flex justify-content-center" type="submit" href="/">إتمام الطلب </button>
                    </center>
        </form>
    </fieldset>
        </body>
</asp:Content>