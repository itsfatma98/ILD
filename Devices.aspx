<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Devices.aspx.cs" Inherits="ILD.Devices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/JumanaStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="">
            <!-- Header of the page -->
            <center>
                <h1 class="mt-5">تقنيات أجهزة معمل الابتكارات</h1>
            </center>

            <!-- Local Devices -->
            <section>
                <div class="container" style="text-align: right">
                    <!-- Header -->
                    <div class="row">
                        <div class="col-md-12">
                            <span class="dotHomeHeader" style="width: 85px">
                                <p style="font-size: 30px; padding: 12px; width: 200px; margin-right: 12px;">إعارة محلية</p>
                            </span>
                        </div>
                    </div>

                    <!-- Sub-head -->
                    <div class="row">
                        <div class="col-md-12 mt-2">
                            <p style="margin-right: 30px; color: gray; font-size: 20px;">يمكنك حجز موعد لاستخدام احدى هذه الاجهزة في معمل اجهزة الابتكارات.</p>
                        </div>
                    </div>

                    <!-- Devices -->
                    <div id="localContent" class="container" style="display:grid; grid-template-columns: auto auto auto; justify-content: space-evenly;">
                        <asp:Repeater ID="localRPTR" runat="server">
                            <ItemTemplate>
                                    <div class="col-md mt-2 mb-3" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); margin: auto;">
                                        <div class="row">
                                            <img src="<%#Eval("picture")%>" alt="Picture of the device" style="width: 300px; height: 300px; background-size: cover;"/>
                                        </div>
                                        <center>
                                            <h4 class="mt-2"><%#Eval("name")%></h4>
                                            <asp:LinkButton runat="server" Text="حجز" OnClick="deviceClick" class="btn btn-success mb-4 mt-2" style="padding: 4px 27px" CommandArgument='<%#Eval("serial_number")%>'/>
                                        </center>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Message to show that there aren't any devices available-->
                            <center>
                                <img class="mt-3" src="img/noDevice.png" id="message" style="display: none; width: 60%;"></img>
                            </center>

                            <!-- Script to Show/Hide -->
                        <script>
                                if (document.getElementById("localContent").textContent.trim() === '') {
                                    document.getElementById("message").style.display = "block";
                                    document.getElementById("localContent").style.display = "none";
                                }
                        </script>
                    </div>
            </section>
            <br />

            <!-- Divider -->
            <div class="container">
                <div class="row">
                    <div class="col-md-11 mr-5">
                        <span>
                            <hr class="solid" />
                        </span>
                    </div>
                </div>
            </div>

            <!-- Global Devices -->
            <section>
                <div class="container" style="text-align: right">
                    <!-- Header -->
                    <div class="row">
                        <div class="col-md-12">
                            <span class="dotHomeHeader" style="width: 85px">
                                <p style="font-size: 30px; padding: 12px; width: 200px; margin-right: 12px;">إعارة خارجية</p>
                            </span>
                        </div>
                    </div>

                    <!-- Sub-head -->
                    <div class="row">
                        <div class="col-md-12 mt-2">
                            <p style="margin-right: 30px; color: gray; font-size: 20px;">يمكنك طلب إستعارة لاستخدام احدى هذه الاجهزة في معمل اجهزة الابتكارات..</p>
                        </div>
                    </div>

                    <!-- Devices -->
                    <div id="globalContent" class="container" style="display:grid; grid-template-columns: auto auto auto; justify-content: space-evenly;">
                        <asp:Repeater runat="server" ID="globalRPTR">
                            <ItemTemplate>
                                    <div class="col-md mt-2 mb-3" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); margin: auto;">
                                        <div class="row">
                                            <img src="<%#Eval("picture")%>" alt="Picture of the device" style="width: 300px; height: 300px; background-size: cover;"/>
                                        </div>
                                        <center>
                                            <h4 class="mt-2"><%#Eval("name")%></h4>
                                            <asp:LinkButton runat="server" OnClick="deviceClick" Text="إستعارة"  class="btn btn-success mb-4 mt-2" style="padding: 4px 27px" CommandArgument='<%#Eval("serial_number")%>' />
                                        </center>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <!-- Message to show that there aren't any devices available-->
                            <center>
                                <img class="mt-3" src="img/noDevice.png" id="message1" style="display: none; width: 60%;"></img>
                            </center>

                            <!-- Script to Show/Hide -->
                        <script>
                            if (document.getElementById("globalContent").textContent.trim() === '') {
                                document.getElementById("message1").style.display = "block";
                                document.getElementById("globalContent").style.display = "none";
                            }
                        </script>
                </div>
            </section>
        </div>
    
</asp:Content>