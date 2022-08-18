<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestForm.aspx.cs" Inherits="ILD.RequestForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <h1>استمارة الطلب</h1>

        <fieldset>
            
                <div class="personal-details">
                    <div>
                        <label>رقم الطلب:</label><asp:textbox ID="request_num" type="text" runat="server" readonly="true"></asp:textbox>

                        <label>اسم الجهاز:</label><asp:textbox ID="device_name" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>نوع الطلب:</label><asp:textbox ID="req_type" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>اسم المستعير:</label><asp:textbox ID="user_name" type="text" runat="server" readonly="true"></asp:textbox>

                        <label>البريد الالكتروني:</label><asp:textbox ID="email" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>الرقم الجامعي / الوظيفي:</label><asp:textbox ID="id" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>رقم الجوال:</label><asp:textbox ID="phone" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>الكلية / القسم:</label><asp:textbox ID="department" type="text" runat="server" readonly="true"></asp:textbox>

                        <label>تاريخ الاستلام:</label><asp:textbox ID="date1" type="text" runat="server" readonly="true"></asp:textbox>
                        <label>المدة:</label><asp:textbox ID="duration" type="text" runat="server" readonly="true"></asp:textbox>
                       <!-- <input type="date" id="calender" name=" = calender" required> -->
                        <label>تاريخ التسليم:</label>
                        <asp:textbox textmode="date" id="date2" name="calender" runat="server" ></asp:textbox>
                    </div>
                    </div>

                    <div style="justify-content: right;">
                        <label style="width: 35%;">الموافقة على الطلب: </label>
                        <br />

                        <%--<label style="width: 0; margin-left: 10px;">قبول:</label>--%>
                        <asp:RadioButton style="width: 10%;" id="acc" text="قبول" runat="server" type="radio" name="indoor-outdoor" GroupName="response"></asp:RadioButton>

                       <%-- <label style="width: 0; margin-left: 10px;">رفض:</label>--%>
                        <asp:RadioButton style="width: 50%;" id="rej" text="رفض" runat="server" type="radio" name="indoor-outdoor" GroupName="response"></asp:RadioButton>
                        <br />
                        <center>
                            <asp:button class="d-flex justify-content-center" text="حفظ التغييرات" type="submit" runat="server" OnClick="Button_click"></asp:button>
                        </center>
                    </div>
            

        </fieldset>

    <!-- pupup JS -->
           <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
           <script src="sweetalert2.all.min.js"></script>

     <script>
         $(function () {
             var today = new Date();
             var month = ('0' + (today.getMonth() + 1)).slice(-2);
             var day = ('0' + today.getDate()).slice(-2);
             var year = today.getFullYear();
             var date = year + '-' + month + '-' + day;
             $('[id*=date2]').attr('min', date);
         });


         function accept() {
             Swal.fire({
                 title: 'شكراً لك',
                 text: 'تم قبول الطلب بنجاح',
                 icon: 'success',
                 buttonsStyling: false,
                 confirmButtonText: 'موافق'
             }).then(function () {
                 window.location.href = 'ComingRequests.aspx';
             });
         }

         function decline() {
             Swal.fire({
                 title: 'شكراً لك',
                 text: 'تم رفض الطلب',
                 icon: 'success',
                 buttonsStyling: false,
                 confirmButtonText: 'موافق'
             }).then(function () {
                 window.location.href = 'ComingRequests.aspx';
             });
         }
         function error() {
             Swal.fire({
                 title: 'خطأ',
                 text: 'الرجاء تحديد تاريخ ارجاع الجهاز',
                 icon: 'error',
                 buttonsStyling: false,
                 confirmButtonText: 'موافق'
             })
         }

     </script>


</asp:Content>