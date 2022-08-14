<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="ILD.UserForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>الصفحة الشخصية</h1>

    <fieldset>
        <form runat="server">
            <div class="personal-details">
               
                    <div>
                        <label>الاسم الأول:</label> <input type="text"  ID="fname" runat="server" required>

                    </div>

                <div>
                        <label>الاسم الأخير:</label> <input type="text"  ID="lname" runat="server" required>

                    </div>

                    <div>
                        <label>الكلية:</label> <select id="dep" typeof="text" runat="server" required>
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
                    </div>

                    <div>
                        <label>رقم الجوال:</label> <input type="text"  ID="num" runat="server" required>

                    </div>

                    <div>
                        <label>البريد الالكتروني:</label> <input type="text"  ID="email" runat="server" required> 

                    </div>

                
            </div>
             <br>  
             <br>
             <br>
       <center>
                <asp:Button Class="btn btn-success" ID="Button3" runat="server" Text="تحديث البيانات" OnClick="Edit_Click" />
           </center>

