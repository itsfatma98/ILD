<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.Home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <div class="text-block-left" style="text-align: right;">
                    <h1 style="margin: auto">اعارة أجهزة معمل الابتكارات</h1>
                    <h4>لخدمة مشاريعك</h4>
                    <p>أحدث التقنيات والاجهزة لخدمة منسوبي جامعة الملك عبدالعزيز</p>
                    <button onclick="location.href='#Devices'" type="button" class="buttonHP">ابدأ الاستعارة/حجز الأجهزة</button>
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
                    <div dir="ltr" class="col-md-7 mt-5" id="myChart" style="max-width: 600px; max-height:424px; padding: 20px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; background-color: white;"></div>
                    <!-- The Script for the chart -->
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <script>
                        google.charts.load('current', { 'packages': ['corechart'] });
                        google.charts.setOnLoadCallback(drawChart);

                        function drawChart() {
                            var data = google.visualization.arrayToDataTable([
                                ['التقنيات', 'إعارة محلية', 'إعارة خارجية'],
                                ['VR', 55, 21],
                                ['Hologram', 49, 22],
                                ['3D Printer', 44, 12],
                                ['Leap Motion', 24, 9]
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
                                }
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
                                        <p class="mt-2" style="color: #437231; font-size: 20px">جهاز الـ(Leap)</p>
                                    </div>
                                    <div class="col-md-4" style="text-align: center">
                                        <i class="fa fa-line-chart" style="font-size: 65px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Devices Section -->
        <section>
            <div class="container mt-5" id="Devices">
                <!-- Header Section -->
                <div class="row" style="text-align: right">
                    <div class="col-5">
                        <hr class="dashed">
                    </div>
                    <div class="col-2">
                        <h2 style="text-align: center">التقنيات</h2>
                    </div>
                    <div class="col-5">
                        <hr class="dashed">
                    </div>
                </div>
                <!-- Content Section -->
                <!-- Local Devices -->
                <div class="row" style="text-align: right">
                    <div class="container">
                        <!-- Header -->
                        <div class="row">
                                <span class="dotHomeHeader" style="width: 8%">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">اعارة محلية</p>
                                </span>
                        </div>
                        <!-- Slider of Devices -->
                        <div class="row">
                            <div #swiperRef="" class="swiper mySwiper">
        <div class="swiper-wrapper">
            <asp:Repeater ID="RPTR_local" runat="server">
                <ItemTemplate>
                    <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(<%#Eval("picture")%>); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title"><%#Eval("en_name")%></h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons mt-4">حجز</cardButtons>
                    </div>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
           <!-- <div class="swiper-slide">

                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/printer1.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">طابعة ثلاثية الابعاد<br />
                            <h5>3D Printer</h5></h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">حجز</cardButtons>
                    </div>
                </div>
            </div>



            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/proc2.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">حاسب بمعالج عالي السرعة   <br />    <h5>Master case h500p</h5></h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">حجز</cardButtons>
                    </div>
                </div>
            </div>




            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/holo.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">الهولوجرام  <br>    <h5>HOLHO 3Faces </h5></h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">حجز</cardButtons>
                    </div>
                </div>
            </div>



            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/vvvr.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">نظارة الواقع الافتراضي   <br>   <h5> VR </h5> </h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">حجز</cardButtons>
                    </div>
                </div>
            </div>
            -->


        </div>


        <div class="swiper-button-next" style="color:#437131"></div>
        <div class="swiper-button-prev" style="color:#437131"></div>
        <div class="swiper-pagination"></div>
    </div>
    
   <!-- <p class="append-buttons">
        <button class="append-slide">Append Slide</button>
    </p>
                      -->     
                        </div>
                </div>

            </div>
                
                <!-- Global Devices -->
                <div class="row" style="text-align: right">
                    <div class="container">
                        <!-- Header -->
                        <div clss="row">
                            <span class="dotHomeHeader" style="width: 8%">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">اعارة خارجية</p>
                            </span>
                        </div>
                        <!-- Slider of Devices -->
                        <div class="row">
                            <div #swiperRef="" class="swiper mySwiper2">
        <div class="swiper-wrapper">

            <asp:Repeater ID="RPTR_global" runat="server">
                <ItemTemplate>
                    <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(<%#Eval("picture")%>); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title"><%#Eval("en_name")%></h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons mt-4">استعارة</cardButtons>
                    </div>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
            <!--
            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/OIP.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">نظارة الواقع الافتراضي   <br>  <h5> VR </h5>  </h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">استعارة</cardButtons>
                    </div>
                </div>
            </div>



            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/holo.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">الهولوجرام<br/>  <h5>   3D Hologram </h5>   </h4>
                        <cardButtons onclick="location.href='#'" type="button" class="cardButtons">استعارة</cardButtons>
                    </div>
                </div>
            </div>



            <div class="swiper-slide">
                <div class="card">
                    <div class="image-content" onclick="location.href='#'" style="background-image: url(img/leap-motion.jpg); background-repeat: no-repeat; background-position: center center; background-size: cover;">
                    </div>

                    <div class="card-body">
                        <h4 class="card-title">الليب موشن
                            <br /> <h5>   Leap Motion </h5>  </h4>
                            <cardButtons onclick="location.href='#'" type="button" class="cardButtons">استعارة</cardButtons>
                    </div>
                </div>

            </div>
            -->

        </div>

        <div class="swiper-button-next" style="color:#437131"></div>
        <div class="swiper-button-prev" style="color:#437131"></div>
        <div class="swiper-pagination"></div>
    </div>
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
            <div class="imageContainer d-flex">
                <img src="img/about.jpg" alt="Image" style="width: 100%; opacity: 0.6;" class="center" />
                <div class="text-block-right mt-3" style="text-align: right">
                    <h1 style="margin: auto; text-align: center;"> --- نبذه عنا ---</h1>
                    <p></p>
                    <p style="font-size: 24px">من منطلق المساهمة في الجهود الحثيثة لتحسين مخرجات التعليم والتعلم الالكتروني بجامعة الملك عبدالعزيز ولتحقيق الميزة التنافسية التي تطمح لها جامعة المؤسس، تم إنشاء نظام اعارة أجهزة الابتكارات والذي يندرج تحت مظلة معمل ابتكارات التعلم الالكتروني بعمادة التعلم الالكتروني والتعليم عن بعد. ويسمح النظام للمستخدمين باستعارة أو حجز عدة متطلبات تقنية ووسائل تعليمية للاستخدام التدريبي والبحثي والخدمة المجتمعية.
                        <span style="color: seagreen; cursor: pointer;" class="forMore" onclick="location.href='AboutUs.aspx'">للمزيد...</span>
                    </p>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
