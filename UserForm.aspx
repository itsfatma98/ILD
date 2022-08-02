<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="ILD.UserForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: 
    center center; background-size: cover;">

    <h1>الصفحة الشخصية</h1>
    <fieldset>
        <form action="/">

            <div class="personal-details">
                <div>
                    <div>
                        <label>الاسم:</label><input type="text" name="name" required placeholder="منى ابراهيم علي احمد "></div>

                    <div>
                        <label>الرقم الجامعي/الوظيفي:</label><input type="text" name="name" placeholder="1815588 "></div>

                    <div>
                        <label>الكلية:</label><input type="text" name="name" placeholder="الحاسبات وتقنية المعلومات"></div>

                    <div>
                        <label>رقم الجوال:</label><input type="text" name="phoneNum" required placeholder="0547313772"></div>
                    <div>
                        <label>البريد الالكتروني:</label><input type="text" name="Gmail" required placeholder="imuna0000@gmail.com"></div>

                </div>
            </div>
             <br />  <br />
            <center>
                <button class="d-flex justify-content-center" type="submit" href="/">تعديل المعلومات</button>
            </center>
             <br />  <br />
        </form>






        <hr>
        <p>

            <label for="order">
                <br>
                <br>
                <center>
                    نوع الطلب:

               

                    <select name="order">
                        <order>
                        <option value="borrow">استعارة </option>
                        <option value="reserve">حجز</option>
                    </select>
        </p>
        </center>
   
        <br>
        <br>
        </label>


       


        <table class="center">
            <tr>
                <th>
                    <input type="checkbox">
                </th>
                <th>اسم الجهاز </th>
                <th>تاريخ الطلب </th>
                <th>تاريخ التسليم </th>
                <th>الحالة </th>

                <tr>
                    <td>
                        <input type="checkbox">
                        </th></td>
                    <td>VR</td>

                    <td>
                        <form>
                            <input type="date" id="calender" name="calender">
                        </form>
                    </td>

                    <td>
                        <form>
                            <input type="date" id="calender" name="calender">
                        </form>
                    </td>

                    <td>فعال</td>
                </tr>

            <tr>
                <td>
                    <input type="checkbox">
                    </th></td>
                <td>HOLO</td>

                <td>
                    <form>
                        <input type="date" id="calender" name="calender">
                    </form>
                </td>

                <td>
                    <form>
                        <input type="date" id="calender" name="calender">
                    </form>
                </td>


                <td>غير فعال </td>
            </tr>
        </table>
         <br />  <br />
          <center>
                <button class="d-flex justify-content-center" type="submit" href="/"> طلب تمديد</button>
            </center>
        <br />  <br />
    </fieldset>
</body>
</asp:Content>
