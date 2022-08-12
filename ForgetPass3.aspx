<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPass3.aspx.cs" Inherits="ILD.ForgetPass3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: center center; background-size: cover;">
    <br>
    <br>
    <h1>إنشاء كلمة مرور جديدة</h1>
    <br>
    <br>
    <fieldset>
        <br>
        <br>
        <form action="/">
            <div class="personal-details">
                <div>
                    <div>
                        <label> كلمة المرور :</label><input type="password" name="txt" required>
                    </div>
                    <div>
                        <label> اعادة كلمة المرور:</label><input type="password" name="txt" required>
                    </div>
                </div>
            </div>
            <center>
                <br>
                <br>
                <button class="d-flex justify-content-center" type="submit" href="/">إرسال</button>
            </center>
        </form>
    </fieldset>

  <script>
      window.addEventListener('mouseover', initLandbot, { once: true });
      window.addEventListener('touchstart', initLandbot, { once: true });
      var myLandbot;
      function initLandbot() {
          if (!myLandbot) {
              var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
              s.addEventListener('load', function () {
                  var myLandbot = new Landbot.Livechat({
                      configUrl: 'https://landbot.site/v3/H-1324510-EBE1KZZYAR9CMDNO/index.json',
                  });
              });
              s.src = 'https://cdn.landbot.io/landbot-3/landbot-3.0.0.js';
              var x = document.getElementsByTagName('script')[0];
              x.parentNode.insertBefore(s, x);
          }
      }
</script>
</body>
</asp:Content>
