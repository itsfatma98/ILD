<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BorrowingForm.aspx.cs" Inherits="ILD.BorrowingForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 70%;
            table-layout: fixed
        }

        td, th {
            border: 1px solid #cae8ca;
            text-align: center;
            padding: 8px;
        }

        .center {
            margin-left: auto;
            margin-right: auto;
        }

        label {
            display: inline-block;
            text-align: center;
        }

        hr {
            width: 50%;
            margin: 0 auto;
            height: 1px;
            background-color: grey;
        }

        html, body {
            min-height: 100%;
        }



        html, body {
            min-height: 100%;
        }

        body, div, form, input, select, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: black;
        }

        h1 {
            text-align: center;
            margin: 0;
            margin-bottom: 30px;
            margin-top: 30px;
            font-weight: 400;
            font-size: 50px;
            color: #fff;
        }

        h3 {
            margin: 12px 0;
            color: #8ebf42;
        }

        .main-block {
            display: flex;
            width: 60%;
            position: center;
            justify-content: center;
            align-items: center;
            background: #fff;
        }

        form {
            place-items: center;
            display: inline;
            padding: 20px;
            width: 55%;
        }

        fieldset {
            margin: auto;
            position: relative;
            justify-content: center;
            align-items: center;
            width: 60%;
            background-color: white;
            border-radius: 20px;
            vertical-align: central;
            border: none;
            box-shadow: 10px 4px 10px rgb(108, 108, 108);
            padding: 20px 30px 40px 0px;
        }

        .personal-details {
            display: inline;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 7px;
            width: 50%;
        }


        input, label {
            font-size: 25px;
            margin-bottom: 26px;
            margin: auto;
        }

        label {
            margin: 10px 0;
            width: 35%;
            padding: 0 5px;
            text-align: right;
            vertical-align: middle;
        }

        input {
            margin: 10px 0;
            width: 50%;
            padding: 5px;
            vertical-align: middle;
        }

        select {
            padding: 8px 5px 8px 5px;
            width: calc(50% + 15px);
            background: transparent;
            font-size: 18px;
        }


        button {
            position: center;
            width: 20%;
            padding: 10px 24px;
            margin: 5px auto;
            margin-top: 20px;
            border-radius: 4px;
            border: none;
            background: #569c5a;
            font-size: 18px;
            font-weight: 600;
            color: #fff;
        }

            button:hover {
                background: #326041;
            }

        @@media (min-width: 568px) {
            .account-details > div, .personal-details > div {
                width: 70%;
            }
        }
    </style>
      <body style="background: url('w3.jpeg') no-repeat center; background-size: cover;">

    <h1>نموذج طلب الإعارة </h1>

    <fieldset>
        <form action="/">

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

                    <div>
                        <label>
                   
                            <p style=" font-size: 23px; color: red; font-weight:800 ">ملاحظة: </p> 
                            <p style="font-size: 23px; width:150%">اقصى مدى للإعارة ٣ اشهر من تاريخ استلام الجهاز. </label>
                    </div>
                 
                    <input type="checkbox" style="width: 5%;" name="إقرار[]" id="إقرار" placeholder="إقرار" required />
                    <label style="width: 90%;"> أتعهد بالمحافظة على الجهاز وملحقاته واستعماله بصورة جيدة</label><br>
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
</asp:Content>
