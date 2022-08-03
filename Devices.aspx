<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Devices.aspx.cs" Inherits="ILD.Devices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/JumanaStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br>
    <br>
    <br>
    <br>
    <p style="font-size: 60px; font-weight: 500; text-align:center" >
      تقنيات اجهزة معمل الابتكارات  
    </p>
    <section class="design" id="design">
       <div class="row">
                                <span class="dotHomeHeader" style="min-width:auto">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">اعارة محلية</p>
                                </span>
                        </div>
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
                    <!-- end of device -->
                    <!-- device -->
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
        <div class="row">
                                <span class="dotHomeHeader" style="width: 8%">
                                <p style="font-size: 35px; padding: 12px; width: 200px;">اعارة خارجية</p>
                                </span>
                        </div>
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
    </section>
    <!-- end of available devices for borrowing -->
</asp:Content>
