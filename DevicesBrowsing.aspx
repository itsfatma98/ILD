<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DevicesBrowsing.aspx.cs" Inherits="ILD.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
<link rel ="http://www.w3.org/1999/xhtml">
    <style>
    img {
        width: 100%;
        display: block
    }

    .container {
        max-width: 1320px;
        margin: 0 auto;
        padding: 0 1.2rem;
    }

      .container2 {
        max-width: 1320px;
        margin: 0 auto;
        padding: 0 1.2rem;
    }

    .dot {
        height: 210px;
        width: 210px;
        background-color: #cae8ca;
        border-radius: 100%;
        display: inline-block;
        margin-right:100px;
    }

    .design-img {
        position: relative;
        overflow: hidden;
    }

        .design-img::after {
            position: absolute;
            content: "";
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.1);
        }

        .design-img img {
            transition: all 0.5s ease;
        }

    .design-item:hover img {
        transform: scale(1.2);
    }

    .design-title {
        padding: 1rem;
        font-size: 1.2rem;
        text-align: center;
        width: 70%;
        margin: 0 auto;
    }

        .design-title a {
            color: black;
            text-decoration: none;
            text-transform: capitalize;
            font-family: Andale Mono, monospace;
        }

            .design-title a:hover {
                color: #3c910b;
            }

    /* Media Queries */


    @media screen and (min-width: 700px) {
        .nav .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .design-content {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
        }
    }
     .design-content2 {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
        }
    }
    @media screen and (min-width: 1200px) {
        .design-content {
            grid-template-columns: repeat(3, 1fr);
        }
    }
</style>


    <body>
    <br>
    <br>
    <br>
    <br>
    <p style="font-size: 60px; font-weight: 500; text-align:center" >
      تقنيات اجهزة معمل الابتكارات  
    </p>
    <section class="design" id="design">
        <span class="dot">
            <p style="font-size: 50px; font-weight: 500;  width: 400px;" >إعارة محلية:</p>
        </span>
        <p style="font-size: 50px; width: 80%; text-align:center">يمكنك حجز موعد لاستخدام احدى هذه الاجهزة في معمل اجهزة الابتكارات.</p>
        <div class="container">
            <br></br>
            <div class="title">
                <div class="design-content">
                    <!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="VirtualRealityGlasses.jpg" alt="VR Glasses" width="500" height="500">
                        </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">نظارات الواقع الافتراضي
                                <br>
                                VR Glasses </a>
                        </div>
                    </div>
                    <!-- end of device -->

                    <!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="hologram.png" alt="HOLHO 3FACES" width="500" height="500">
                        </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">منصة العرض ثلاثية الابعاد
                                <br>
                                HOLHO 3FACES </a>
                        </div>
                    </div>
                    <!-- end of device --><!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="3Dprinter.png" alt="3D printer" width="500" height="500">
                            </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">طابعة ثلاثية الابعاد<br>
                                3D printer</a>
                        </div>
                    </div>
                    <!-- end of device -->

                    <!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="DataAnalysisTool.png" alt="Master case h500p" width="500" height="500">
                        </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">جهاز حاسب بمعالج عالي السرعة
                                <br>
                                Master case h500p </a>
                        </div>
                    </div>
                    <!-- end of device -->
                    <!-- device -->
                     <!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="DataAnalysisTool.png" alt="Master case h500p" width="500" height="500">
                        </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">جهاز حاسب بمعالج عالي السرعة
                                <br>
                                Master case h500p </a>
                        </div>
                    </div>
                    <!-- end of device -->
                    <!-- device -->
                    <div class="design-item">
                        <div class="design-img">
                            <img src="AudioStudio.jpg" alt="Audio studio" width="500" height="500">
                        </div>
                        <div class="design-title">
                            <a href="DeviceInformation.html">الاستديو الصوتي
                                <br>
                                Audio studio </a>
                        </div>
                    </div>
                    <!-- end of device -->
                </div>
            </div>
    </section>
    <!-- end of available devices for reservation -->
    <section class="design" id="design2">
        <span class="dot">
            <br >
            <p style="font-size: 50px; font-weight: 500;  width: 400px;">إعارة خارجية:</p>
        </span>
        <p style="font-size: 50px; width: 80%; text-align:center""> يمكنك طلب إعارة لاستخدام احدى هذه الاجهزة في معمل اجهزة الابتكارات. </p>
       
            <div class="container2">
                <br></br>
                <div class="title">
                    <div class="design-content2">
                        <!-- device -->
                        <div class="design-item">
                            <div class="design-img">
                                <img src="VirtualRealityGlasses.jpg" alt="VR Glasses" width="500" height="500">
                            </div>
                            <div class="design-title">
                                <a href="DeviceInformation.html">نظارات الواقع الافتراضي
                                    <br>
                                    VR Glasses </a>
                            </div>
                        </div>
                        <!-- end of device -->

                        <!-- device -->
                        <div class="design-item">
                            <div class="design-img">
                                <img src="hologram.png" alt="HOLHO 3FACES" width="500" height="500">
                            </div>
                            <div class="design-title">
                                <a href="DeviceInformation.html">منصة العرض ثلاثية الابعاد
                                    <br>
                                    HOLHO 3FACES </a>
                            </div>
                        </div>
                        <!-- end of device -->

                        <!-- device -->
                        <div class="design-item">
                            <div class="design-img">
                                <img src="LeapMotion.jpg" alt="Leap Motion" width="500" height="500">
                            </div>
                            <div class="design-title">
                                <a href="DeviceInformation.html">طابعة ثلاثية الابعاد<br>
                                    3D printer</a>
                            </div>
                        </div>
                        <!-- end of device -->
                    </div>
                </div>
                </div>
    </section>
    <!-- end of available devices for borrowing -->
</body>
</asp:Content>
