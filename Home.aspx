<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.Home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- bootstrap link -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

     <!-- bootstrap  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>


    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    <!-- swiper css link -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous" />

    <link href="customizedCSS/RawanStyle.css" rel="stylesheet" />

   
<div class="">
        <!-- Banner Image -->
        <section>
            <div class="imageContainer d-flex">
                <img src="img/home.jpg" alt="Banner Image" style="width: 100%" class="center" />
                <div class="text-block-left" style="text-align: right">
                    <h1 style="margin: auto; font-size: 3vw;">إعارة أجهزة معمل الابتكارات</h1>
                    <h4 style="font-size: 1.8vw">لخدمة مشاريعك</h4>
                    <p style="font-size: 1.6vw">أحدث التقنيات والاجهزة لخدمة منسوبي جامعة الملك عبدالعزيز</p>
                    <button onclick="location.href='Devices.aspx'" type="button" class="buttonHP" style="font-size:1.5vw">ابدأ الإستعارة/حجز الأجهزة</button>
                </div>
            </div>
        </section>

        <!-- Dashboard Section -->

        <section>
            <div class="container">
                <!-- Header Section -->
                <div class="row" style="text-align: right">
                    <div class="col-md-5">
                        <hr class="dashed">
                    </div>
                    <div class="col-md-3">
                        <h2 style="text-align: center">لوحة المعلومات</h2>
                    </div>
                    <div class="col-md-4">
                        <hr class="dashed">
                    </div>
                </div>
                
                <!-- The Content of the Section -->
                <div class="row">
                        <!-- The Graph of the Dashboard -->
                        <div dir="ltr" class="col-md-7 mt-5" id="myChart" style="max-width: 600px; max-height: 424px; padding: 20px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; background-color: white; overflow: auto;"></div>
                        <!-- Message to show that there aren't any devices available-->
                    <div dir="ltr" class="col-md-7 mt-5" id="message2" style="display:none; max-width: 600px; max-height: 424px; padding: 20px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; background-color: white; overflow: auto;">
                        <center>
                                <img class="mt-3" src="img/noDevice.png" style="width: 100%; height: 90%;"></img>
                            </center>
                        </div>
                    <!-- Data for the graph taken from the database -->
                    <p id="d1" style="display: none"><%=d1%></p>
                    <p id="d2" style="display: none"><%=d2%></p>
                    <p id="d3" style="display: none"><%=d3%></p>
                    <p id="d4" style="display: none"><%=d4%></p>
                    <p id="d5" style="display: none"><%=d5%></p>
                    <p id="l1" style="display: none"><%=l1%></p>
                    <p id="l2" style="display: none"><%=l2%></p>
                    <p id="l3" style="display: none"><%=l3%></p>
                    <p id="l4" style="display: none"><%=l4%></p>
                    <p id="l5" style="display: none"><%=l5%></p>
                    <p id="g1" style="display: none"><%=g1%></p>
                    <p id="g2" style="display: none"><%=g2%></p>
                    <p id="g3" style="display: none"><%=g3%></p>
                    <p id="g4" style="display: none"><%=g4%></p>
                    <p id="g5" style="display: none"><%=g5%></p>
                        <!-- The Script for the chart -->
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script>
                            google.charts.load('current', { 'packages': ['corechart'] });
                            google.charts.setOnLoadCallback(drawChart);
                            function drawChart() {

                                var l1 = parseInt(<%=l1%>);

                                var data = google.visualization.arrayToDataTable([
                                    ['التقنيات', 'إعارة محلية', 'إعارة خارجية'],
                                    [document.getElementById("d1").innerText, parseInt(document.getElementById("l1").innerText), parseInt(document.getElementById("g1").innerText)],
                                    [document.getElementById("d2").innerText, parseInt(document.getElementById("l2").innerText), parseInt(document.getElementById("g2").innerText)],
                                    [document.getElementById("d3").innerText, parseInt(document.getElementById("l3").innerText), parseInt(document.getElementById("g3").innerText)],
                                    [document.getElementById("d4").innerText, parseInt(document.getElementById("l4").innerText), parseInt(document.getElementById("g4").innerText)],
                                    [document.getElementById("d5").innerText, parseInt(document.getElementById("l5").innerText), parseInt(document.getElementById("g5").innerText)]
                                ]);

                                var options = {
                                    title: 'أكثر الأجهزة طلباً في معمل الابتكارات',
                                    titleTextStyle: {
                                        fontName: "Arial",    // 'Times New Roman'
                                        fontSize: 25,               // 12, 18
                                    },
                                    colors: ['#437131', '#1e3b29'],
                                    legendTextStyle: {
                                        fontName: "Arial",
                                        fontSize: 14,
                                    },
                                    isStacked: true,
                                };

                                var chart = new google.visualization.ColumnChart(document.getElementById('myChart'));
                                chart.draw(data, options);
                            }
                        </script>
                        <!-- The Cards -->
                        <div class="col-md-5">
                            <div class="row">
                                <div class="col-md-10 bg-light mt-5" style="padding: 40px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; margin: auto;">
                                    <div class="row">
                                        <div class="col-md-8" style="text-align: right">
                                            <h4 style="font-size: 24px; text-align: right;">العدد الكلي لمستخدمي النظام:</h4>
                                            <p class="mt-2" style="color: #437231; font-size: 20px;"><%=visitors%> مستخدم</p>
                                        </div>
                                        <div class="col-md-4" style="text-align: center">
                                            <i class="fa fa-group" style="font-size: 65px"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-10 bg-light mt-5" style="padding: 40px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; margin: auto;">
                                    <div class="row">
                                        <div class="col-md-8" style="text-align: right">
                                            <h4 style="font-size: 24px">اكثر الأجهزة مستعارة:</h4>
                                            <p id="top1D" class="mt-2" style="color: #437231; font-size: 20px">جهاز الـ(<%=top1%>)</p>
                                            <p id="message3" class="mt-2" style="color: red; font-size: 20px; display:none;">لا يوجد أي جهاز حالياً!</p>
                                        </div>
                                        <div class="col-md-4" style="text-align: center">
                                            <i class="fa fa-line-chart" style="font-size: 65px"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Script to Show/Hide -->
                        <script>
                            if (document.getElementById("d1").innerText == '') {
                                document.getElementById("message2").style.display = "block";
                                document.getElementById("myChart").style.display = "none";
                                document.getElementById("message3").style.display = "block";
                                document.getElementById("top1D").style.display = "none";
                            }
                        </script>
                        </div>
                </div>
            </div>
        </section>
            
                
        
        
        <!-- Devices Section -->
        <section>
            <div class="container mt-5" id="Devices">
                <!-- Header Section -->
                <div class="row" style="text-align: right">
                    <div class="col-md-5">
                        <hr class="dashed">
                    </div>
                    <div class="col-md-2">
                        <h2 style="text-align: center">التقنيات</h2>
                    </div>
                    <div class="col-md-5">
                        <hr class="dashed">
                    </div>
                </div>
                <!-- Content Section -->
                <!-- Local Devices -->
                <div class="row" style="text-align: right">
                    <div class="container">
                        <!-- Header -->
                        <div class="row">
                                <span class="dotHomeHeader" style="width: 90px">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">إعارة محلية</p>
                                </span>
                        </div>
                        <!-- Slider of Devices -->
                        <div class="row">
                            <div id="localContent" #swiperRef="" class="swiper mySwiper">
        <div class="swiper-wrapper">
                                <asp:Repeater ID="RPTR_local" runat="server">
                                        <itemtemplate>
                                            <div class="swiper-slide">
                                                <div class="card" >
                                                    <div class="image-content" style="background-image: url(<%#Eval("picture")%>); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                    <asp:LinkButton runat="server" onclick="deviceClicked" style="width: 100%; opacity: 0; height:100%;" CommandArgument='<%#Eval("serial_number")%>'/>
                                                    </div>
                                                    <div class="card-body" >
                                                        <h4 class="card-title"><%#Eval("name")%></h4>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" style="padding: 4px 27px" onclick="deviceClicked" class="btn btn-success mt-4" Text="حجز" CommandArgument='<%#Eval("serial_number")%>'></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </itemtemplate>
                                </asp:Repeater>
                            </div>
                                <div class="swiper-button-next" style="color:#437131"></div>
                                <div class="swiper-button-prev" style="color:#437131"></div>
                                <div class="swiper-pagination"></div>
                            </div>   
                            <!-- Message to show that there aren't any devices available-->
                            <center>
                                <img class="mt-2" src="img/noDevice.png" id="message1" style="display: none; width: 60%;"></img>
                            </center>

                            <!-- Script to Show/Hide -->
                        <script>
                                if (document.getElementById("localContent").textContent.trim() === '') {
                                    document.getElementById("message1").style.display = "block";
                                    document.getElementById("localContent").style.display = "none";
                                }
                        </script>
                        </div>
                    </div>

                </div>
                
                <!-- Global Devices -->
                <div class="row" style="text-align: right">
                    <div class="container">
                        <!-- Header -->
                        <div clss="row">
                            <span class="dotHomeHeader" style="width: 90px">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">إعارة خارجية</p>
                            </span>
                        </div>
                        <!-- Slider of Devices -->
                        <div class="row">
                            <div id="globalContent" #swiperRef="" class="swiper mySwiper">
        <div class="swiper-wrapper">

            <asp:Repeater ID="RPTR_global" runat="server">
                <ItemTemplate>
                    <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" style="background-image: url(<%#Eval("picture")%>); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                        <asp:LinkButton runat="server" onclick="deviceClicked" style="width: 100%; opacity: 0; height:100%;" CommandArgument='<%#Eval("serial_number")%>'/>
                    </div>

                    <div class="card-body">
                        <h4 class="card-title"><%#Eval("name")%></h4>
                        <asp:LinkButton ID="LinkButton1" runat="server" style="padding: 4px 27px" onclick="deviceClicked" class="btn btn-success mt-4" Text="إستعارة" CommandArgument='<%#Eval("serial_number")%>'></asp:LinkButton>
                    </div>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>

        <div class="swiper-button-next" style="color:#437131"></div>
        <div class="swiper-button-prev" style="color:#437131"></div>
        <div class="swiper-pagination"></div>
    </div>
                            <!-- Message to show that there aren't any devices available-->
                            <center>
                                <img class="mt-2" src="img/noDevice.png" id="message" style="display: none; width: 60%;"></img>
                            </center>

                            <!-- Script to Show/Hide -->
                        <script>
                            if (document.getElementById("globalContent").textContent.trim() === '') {
                                document.getElementById("message").style.display = "block";
                                document.getElementById("globalContent").style.display = "none";
                            }
                        </script>
                        </div>
                    </div>
                </div>

                <!--- Scripts -->
                <!-- bootstrap  -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

                <!-- swiper-bundle -->
                <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
                <script src="Scripts/RawanScript.js"></script>

                <!-- Swiper JS -->
                <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

            </div>
        </section>
        
        <!-- About Us Section -->
    <section>
        <div class="container">
<!-- Header -->
                <div class="row" style="text-align: right">
                    <div class="col-md-5">
                        <hr class="dashed">
                    </div>
                    <div class="col-md-2">
                        <h2 style="text-align: center">نبذه عنا</h2>
                    </div>
                    <div class="col-md-5">
                        <hr class="dashed">
                    </div>
                </div>
<!-- About Us Content -->
            <div class="imageContainer d-flex" style="padding: 50px 10px">
                    <img src="img/about.jpg" alt="Image" style="width: 100%; opacity: 0.6;" class="center" />
                    <div class="text-block-right" style="text-align: right">
                        <p></p>
                        <h3 style="margin: auto; text-align: center; font-size:2vw;">--- إعارة أجهزة معمل الإبتكارات ---</h3>
                        <p></p>
                        <p style="font-size: 1.8vw">
                            من منطلق المساهمة في الجهود الحثيثة لتحسين مخرجات التعليم والتعلم الالكتروني بجامعة الملك عبدالعزيز ولتحقيق الميزة التنافسية التي تطمح لها جامعة المؤسس، تم إنشاء نظام اعارة أجهزة الابتكارات والذي يندرج تحت مظلة معمل ابتكارات التعلم الالكتروني بعمادة التعلم الالكتروني والتعليم عن بعد. ويسمح النظام للمستخدمين باستعارة أو حجز عدة متطلبات تقنية ووسائل تعليمية للاستخدام التدريبي والبحثي والخدمة المجتمعية.
                        <span style="color: seagreen; cursor: pointer;" class="forMore" onclick="location.href='AboutUs.aspx'">للمزيد...</span>
                        </p>
                    </div>
                </div>
        </div>

    </section>
    </div>
    
    
</asp:Content>
