<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ILD.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="">
        <!-- Banner Image -->
        <section>
            <div class="imageContainer d-flex">
                <img src="img/home.jpg" alt="Banner Image" style="width: 100%" class="center" />
                <div class="text-block-left" style="text-align: right;">
                    <h1>اعارة أجهزة معمل الابتكارات</h1>
                    <h3>لخدمة مشاريعك</h3>
                    <p>أحدث التقنيات والاجهزة لخدمة منسوبي جامعة الملك عبدالعزيز</p>
                    <asp:Button ID="Button1" runat="server" Text="ابدأ الاستعارة/حجز أجهزة" />
                </div>
            </div>
        </section>

        <!-- Dashboard Section -->
        <section>
            <div class="container">
                <!-- Header Section -->
                <div class="row" style="text-align: right">
                    <div class="col-3">
                        <h2>لوحة المعلومات</h2>
                    </div>
                    <div class="col-9">
                        <hr class="dashed">
                    </div>
                </div>
                <!-- The Content of the Section -->
                <div class="row">
                    <!-- The Graph of the Dashboard -->
                    <div class="col-7 bg-light mt-5" style="padding: 100px; box-shadow: 10px 10px 5px #1b3c27; border-radius: 25px;">
                        <p style="text-align: center">Here will be the dashboard</p>
                    </div>
                    <!-- The Cards -->
                    <div class="col-5">
                        <div class="row">
                            <div class="col-12 bg-light mt-5 mr-2" style="padding: 45px; box-shadow: 10px 10px 5px #1b3c27; border-radius: 25px; margin: auto;">
                                <div class="row">
                                    <div class="col-8" style="text-align: right">
                                        <h4 style="font-size: 24px; text-align: right;">العدد الكلي لمستخدم النظام:</h4>
                                        <p style="color: #437231">1.4K مستخدم</p>
                                    </div>
                                    <div class="col-4" style="text-align: center">
                                        <i class="fa fa-group" style="font-size: 65px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 bg-light mt-5 mr-2" style="padding: 45px; box-shadow: 10px 10px 5px #1b3c27; border-radius: 25px; margin: auto;">
                                <div class="row">
                                    <div class="col-8" style="text-align: right">
                                        <h4 style="font-size: 24px">اكثر الأجهزة مستعارة:</h4>
                                        <p style="color: #437231;">جهاز الـ(Leap)</p>
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
        </section>
        
        <!-- Devices Section -->
        <section>
            <div class="container mt-5">
                <!-- Header Section -->
                <div class="row" style="text-align: right">
                    <div class="col-2">
                        <h2>التقنيات</h2>
                    </div>
                    <div class="col-10">
                        <hr class="dashed">
                    </div>
                </div>
            </div>
        </section>
        
    </div>
</asp:Content>
