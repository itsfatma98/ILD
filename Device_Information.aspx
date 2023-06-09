﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Device_Information.aspx.cs" Inherits="ILD.Device_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="customizedCSS/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div id="devInfo" runat="server" class="container mt-5 mb-5" style="background-color: white; padding: 40px; box-shadow: 5px 5px 10px gray; border-radius: 25px; width: 60%; vertical-align: central; text-align: right;">
                <!-- Header -->
                <div class="row">
                    <div class="col-md-12">
                        <h1 style="text-align: center"><%=devName%></h1>
                    </div>
                </div>
                <!-- Picture -->
                <div class="row">
                    <div class="col-md-12" style="overflow: auto">
                        <center>
                            <img src="<%=devPic%>" alt="Device Image" style="width: 330px;">
                        </center>
                    </div>
                </div>
                <!-- Description -->
                <div class="row">
                    <div class="col-md-12">
                        <!-- Description Header -->
                        <div class="row">
                            <div class="col-md-1" style="margin: auto">
                                <a onclick="showHideDesc()">
                                    <i id="plus" class="fa fa-plus-square-o plusMinus" style="font-size: 36px; display: none;"></i>
                                    <i id="minus" class="fa fa-minus-square plusMinus" style="font-size: 33px;"></i>
                                </a>
                            </div>
                            <div class="col-md-11">
                                <h2>وصف الجهاز:</h2>
                            </div>
                        </div>
                        <!-- Script to Show/Hide -->
                        <script>
                            function showHideDesc() {
                                if (document.getElementById("desc").style.display == "none") {
                                    document.getElementById("desc").style.display = "block";
                                    document.getElementById("plus").style.display = "none";
                                    document.getElementById("minus").style.display = "block";
                                } else {
                                    document.getElementById("desc").style.display = "none";
                                    document.getElementById("plus").style.display = "block";
                                    document.getElementById("minus").style.display = "none";
                                }
                            }
                        </script>
                        <!-- Description Content -->
                        <div class="row">
                            <div class="col-md-12" style="display: block" id="desc">
                                <p class="deviceInfo"><%=devDesc%></p>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <!-- Serial Number -->
                <div class="row">
                    <div class="col-md-12">
                        <!-- Serial Number Header -->
                        <div class="row">
                            <div class="col-md-1" style="margin: auto">
                                <a onclick="showHideSer()">
                                    <i id="plus1" class="fa fa-plus-square-o plusMinus" style="font-size: 36px; display: none;"></i>
                                    <i id="minus1" class="fa fa-minus-square plusMinus" style="font-size: 33px;"></i>
                                </a>
                            </div>
                            <div class="col-md-11">
                                <h2>الرقم التسلسلي:</h2>
                            </div>
                        </div>
                        <!-- Script to Show/Hide -->
                        <script>
                            function showHideSer() {
                                if (document.getElementById("ser").style.display == "none") {
                                    document.getElementById("ser").style.display = "block";
                                    document.getElementById("plus1").style.display = "none";
                                    document.getElementById("minus1").style.display = "block";
                                } else {
                                    document.getElementById("ser").style.display = "none";
                                    document.getElementById("plus1").style.display = "block";
                                    document.getElementById("minus1").style.display = "none";
                                }
                            }
                        </script>
                        <!-- Serial Number Content -->
                        <div class="row">
                            <div class="col-md-12" style="display: block" id="ser">
                                <p class="deviceInfo"><%=devNum%></p>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <!-- Button -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <center>
                                    <asp:button runat="server" class="btn btn-success" onclick="orderClicked" Text="طلب الجهاز"></asp:button>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    
  <script>

      function notAvailable() {
          Swal.fire({
              title: ' الجهاز غير متاح',
              text: 'هذا الجهاز غير متاح في الوقت الحالي',
              icon: 'error',
              buttonsStyling: false,
              confirmButtonText: 'موافق'
          }).then(function () {
              window.location.href = 'Home.aspx';
          });
      }

  </script>

  
</asp:Content>