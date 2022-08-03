<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BorrowingForm.aspx.cs" Inherits="ILD.BorrowingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background: url(img/w3.jfif); background-repeat: no-repeat; background-position: center center; background-size: cover;">
        <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: center center; background-size: cover;">

            <h1>نموذج طلب الإعارة </h1>

            <fieldset>
                <form >

                    <div class="personal-details">
                        <div>

                            <div>
                                <label>الاسم :</label><input type="text" name="name" required>
                            </div>

                            <div>
                                <label>الرقم الجامعي/الوظيفي:</label><input type="text" name="name">
                            </div>
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
                                <label>تاريخ استلام الجهاز :</label><input type="date" name="calender" name="calender">
                            </div>

                            <div>
                                <label>مدة الإستعارة:</label>

                                <select name="مدة الإستعارة:">
                                    <option value="1 month">شهر فقط </option>
                                    <option value="2 months">شهرين فقط </option>
                                    <option value="3 months">ثلاثة اشهر فقط</option>
                                </select>

                            </div>

                            <div style="text-align:right; margin-right: 85px; width: 100%">
                                <div class="d-flex flex-row">
                                       <div>
                                           <label>
                                                <span style="color:red"><strong>ملاحظة:</strong></span>
                                            </label>
                                       </div>
                                             
                                       <div >
                                                <p style="font-size: 180%" class="mt-2 mr-2">أقصى مدة للإعارة 3 أشهر من تاريخ الإستعارة</p>
                                       </div>
                                </div>
                            </div>

                            <input type="checkbox" style="width: 5%;" name="إقرار[]" id="إقرار" placeholder="إقرار" required />
                            <label style="width: 90%;">أتعهد بالمحافظة على الجهاز وملحقاته واستعماله بصورة جيدة</label><br>
                        </div>

                        <center>

                            <button class="d-flex justify-content-center" type="submit" href="/">إتمام الطلب </button>
                        </center>
                </form>
            </fieldset>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  </script>
            <script>
                $(document).ready(function () {
                    $('button').click(function () {
                        checked = $("input[type=checkbox]:checked").length;

                        if (!checked) {
                            alert("الرجاء الموافقة على الإقرار.");
                            return false;
                        }

                    });
                });
            </script>

        </body>
    </body>
</asp:Content>
