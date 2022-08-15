<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReservationForm.aspx.cs" Inherits="ILD.ReservationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>نموذج طلب حجز </h1>

   <fieldset>


        <div class="personal-details">
            <div>

                <div>
                    <label>الاسم :</label><asp:TextBox runat="server" type="text" ID="name" ReadOnly="true">
                    </asp:TextBox>
                </div>

                <div>
                    <label>الرقم الجامعي/الوظيفي:</label><asp:TextBox runat="server" ID="id" type="text" ReadOnly="true">
                    </asp:TextBox>
                </div>
                <label>الكلية:</label>
                <asp:TextBox runat="server" ID="dep" type="text" ReadOnly="true">
                </asp:TextBox>
                <div>
                    <label>تاريخ حجز الجهاز :</label><asp:TextBox ID="cal" runat="server" type="date"  name="calender" required="true"></asp:TextBox>
                </div>


                <input type="checkbox" style="width: 5%;" name="إقرار[]" id="إقرار" placeholder="إقرار"required  />
                <label style="width: 90%;">أتعهد بالمحافظة على الجهاز وملحقاته واستعماله بصورة جيدة</label><br>
            </div>
            <div>
                <label id="mylabel" runat="server" visible="false"></label>
            </div>
            <center>

                <asp:Button class="btn btn-success"  runat="server" OnClick="Reservation_Form_Click" Text="اتمام الطلب"></asp:Button>
            </center>
        </div>
    </fieldset>


  <!-- pupup JS -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var today = new Date();
            var month = ('0' + (today.getMonth() + 1)).slice(-2);
            var day = ('0' + today.getDate()).slice(-2);
            var year = today.getFullYear();
            var date = year + '-' + month + '-' + day;
            $('[id*=cal]').attr('min', date);
        });

        function success() {
            Swal.fire({
                title: 'شكراً لك',
                text: 'تم اتمام الطلب بنجاح',
                icon: 'success',
                buttonsStyling: false,
                confirmButtonText: 'موافق'
            }).then(function () {
                window.location.href = 'Home.aspx';
            });
        }

    </script>
</asp:Content>