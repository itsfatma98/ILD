<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ILD.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container" style="background-color: white; padding: 20px 30px 40px 30px; box-shadow: 10px 10px 15px #1b3c27; border-radius: 25px; width: 60%;vertical-align: central; text-align: right;">
    <!-- Header -->
    <div class="row">
        <div class="col-md-12">
            <h1 style="text-align: center">Oculus Rift</h1>
        </div>
    </div>
    <!-- Picture -->
    <div class="row">
        <div class="col-md-12" style="overflow: auto">
            <center>
                <img src="img/OIP.jpg" alt="VR" style="width: 330px;">
            </center>
        </div>
    </div>
    <!-- Description -->
    <div class="row">
        <div class="col-md-12">
            <!-- Description Header -->
            <div class="row">
                <div class="col-md-12">
                    <h2>وصف الجهاز:</h2>
                </div>
            </div>
            <!-- Description Content -->
            <div class="row">
                <div class="col-md-12"">
                    <p style="width: 85%; margin-right: 50px;">في معمل ابتكارات التعلم الإلكتروني نهتم بحيازة التقنيات التي تعزز التوجه للبحث في أساليب تحفيز تفاعل الطالب وانخراطه في العملية التعليمية. ومن هذه التقنيات، نظارات الواقع الافتراضي التي تشجع على تصميم بيئات تعلم تعتمد على المحاكاة والتفاعل المباشر مع عناصر التعلم وموارده المختلفة. ويتم حاليا إجراء مجموعة من الدراسات للتحقق من العبء الذهني لتوظيف مثل هذه التقنية في العملية التعليمية.</p>
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
                <div class="col-md-12">
                    <h2>الرقم التسلسلي:</h2>
                </div>
            </div>
            <!-- Serial Number Content -->
            <div class="row">
                <div class="col-md-12">
                    <p style="width: 85%; margin-right: 50px;">112211443293</p>
                </div>
            </div>
        </div>
    </div>
    <br />
    <!-- Status of the Device -->
    <div class="row">
        <div class="col-md-12">
            <!-- Status Header -->
            <div class="row">
                <div class="col-md-12">
                    <h2>حالة الجهاز:</h2>
                </div>
            </div>
            <!-- Setatus Content -->
            <div class="row">
                <div class="col-md-12">
                    <p style="width: 85%; margin-right: 50px;">متوفر</p>
                </div>
            </div>
        </div>
    </div>
    <br />
    <!-- Button -->
    <div class="row">
        <div class="col-md-12">
            <!-- Serial Number Header -->
            <div class="row">
                <div class="col-md-12">
                    <center>
                        <button class="btn btn-success">طلب حجز</button>
                    </center>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
