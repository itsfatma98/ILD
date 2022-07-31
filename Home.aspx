<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1">'
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <div class="">
         <div>
             <h1 class="mt-4 mb-4" style="text-align: center">مرحبا بكم في معمل الابتكارات !</h1>
             <div class="w3-content w3-display-container " style="max-width: 800px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <img class="mySlides w3-animate-fading" src="img/d1.jpg" style="width: 100%">
                <img class="mySlides w3-animate-fading" src="img/d2.jpg" style="width: 100%">
                <img class="mySlides w3-animate-fading" src="img/d3.jpg" style="width: 100%">
                <img class="mySlides w3-animate-fading" src="img/d4.jpg" style="width: 100%">
                <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-middle" style="width: 100%; direction: ltr;">
                    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">
                        <i class="fa fa-arrow-right w3-xxlarge"></i>
                    </div>
                    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">
                        <i class="fa fa-arrow-left w3-xxlarge"></i>
                    </div>
                </div>
                <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width: 100%; direction: ltr;">
                    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
                    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
                    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                </div>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
