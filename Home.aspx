<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <div class="">
        <div class="container">
            <img src="img/home.jpg" alt="Banner Image" style="width: 100%" class="center" />
            <div class="text-block-left" style="text-align: right;">
                    <h1>اعارة أجهزة معمل الابتكارات</h1>
                    <h3>لخدمة مشاريعك</h3>
                    <p>أحدث التقنيات والاجهزة لخدمة منسوبي جامعة الملك عبدالعزيز</p>
                    <asp:Button ID="Button1" runat="server" Text="ابدأ الاستعارة/حجز أجهزة"/>
            </div>
        </div>


        <div class="container-fluid">
            <div>
                <h1 class="text-center mt-5 w-100 h-100">لوحة المعلومات</h1>
                <div class=" h-auto mr-5 ml-5 mt-5 mb-5">
                    <img src="img/template7-3.png" class="h-100 w-100 " alt="Dashboard" />

                </div>
            </div>

        </div>

        <div class="container-fluid" id="devices">
            <div>
                <h1 class="text-center mt-5 w-100 h-100">التقنيات</h1>
                <div class=" h-auto mr-5 ml-5 mt-5 mb-5">
                    <img src="img/d1.jpg" class="h-100 w-100 " alt="Dashboard" />

                </div>
            </div>

        </div>
        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) { slideIndex = 1 }
                if (n < 1) { slideIndex = x.length }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-white", "");
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " w3-white";

            }
            var slideIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-white", "");
                }
                slideIndex++;
                if (slideIndex > x.length) { slideIndex = 1 }
                x[slideIndex - 1].style.display = "block";
                setTimeout(carousel, 8000); // Change image every 2 seconds

                dots[slideIndex - 1].className += " w3-white";
            }
        </script>
    </div>
</asp:Content>
