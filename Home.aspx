<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.Home" %>
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
                <div class="text-block-left" style="text-align: right">
                    <h1 style="margin: auto">اعارة أجهزة معمل الابتكارات</h1>
                    <h4>لخدمة مشاريعك</h4>
                    <p>أحدث التقنيات والاجهزة لخدمة منسوبي جامعة الملك عبدالعزيز</p>
                    <button onclick="location.href='#Devices'" type="button" class="buttonHP" style="border-color: transparent;">ابدأ الاستعارة/حجز الأجهزة</button>
                </div>
            </div>
        </section>

        <!-- Dashboard Section -->
        <div class="container">
            <div class="row" style="text-align: right">
                    <div class="col-5">
                        <hr class="dashed">
                    </div>
                    <div class="col-3">
                        <h2 style="text-align: center">لوحة المعلومات</h2>
                    </div>
                    <div class="col-4">
                        <hr class="dashed">
                    </div>
                </div>
            
            <!-- Header Section -->
                
                <!-- The Content of the Section -->
                <div class="row">
                    <!-- The Graph of the Dashboard -->
                    <div class="col-7 bg-light mt-5" style="padding: 100px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px;">
                        <p style="text-align: center">Here will be the graph representation of the dashboard</p>
                    </div>
                    <!-- The Cards -->
                    <div class="col-5">
                        <div class="row">
                            <div class="col-10 bg-light mt-5" style="padding: 40px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; margin: auto;">
                                <div class="row">
                                    <div class="col-8" style="text-align: right">
                                        <h4 style="font-size: 24px; text-align: right;">العدد الكلي لمستخدم النظام:</h4>
                                        <p class="mt-2" style="color: #437231; font-size: 20px;">1.4 ألف مستخدم</p>
                                    </div>
                                    <div class="col-4" style="text-align: center">
                                        <i class="fa fa-group" style="font-size: 65px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-10 bg-light mt-5" style="padding: 40px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; margin: auto;">
                                <div class="row">
                                    <div class="col-8" style="text-align: right">
                                        <h4 style="font-size: 24px">اكثر الأجهزة مستعارة:</h4>
                                        <p class="mt-2" style="color: #437231; font-size: 20px">جهاز الـ(Leap)</p>
                                    </div>
                                    <div class="col-4" style="text-align: center">
                                        <i class="fa fa-line-chart" style="font-size: 65px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
            
                
        
        
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
            <div class="swiper-slide">

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
