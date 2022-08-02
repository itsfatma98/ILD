<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Device_Information.aspx.cs" Inherits="ILD.Device_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body >

            <h1>الصفحة الشخصية</h1>
            <br>
            <br>
            <fieldset>
      <form action="/">
 
          <center>
            <h1 style=" color: black;">نظارة الواقع الافتراضي</h1>
            <h2>Oculus Rift</h2>
            <br>
            <! -- BODY(PIC) -->
              <img src="vr3.jpg" alt="VR" width="330" height="250">
          </center>
          <br><br> <br><br>

          <! -- BODY(BOX1) -->
            <label><strong>:وصف الجهاز</strong></label><br>
            <div class="box1"> </div>
            <br><br>

            <! -- BODY(BOX2) -->
              <br><br>
              <label><strong>:الرقم التسلسلي</strong></label><br>
              <div class="box2"> </div>
              <br><br>

              <! -- BODY(BOX3) -->
                <label><strong>:حالة الجهاز</strong></label><br>
                <div class="box2"> </div>
                <br><br>

                <! -- BODY(BUTTON) -->
                  <center>
                    <button class="button button1">طلب حجز</button>
                  </center>

      </form>
    </fieldset>
  </body>
</asp:Content>
