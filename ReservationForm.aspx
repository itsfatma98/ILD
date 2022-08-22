<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReservationForm.aspx.cs" Inherits="ILD.ReservationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5">
            
           <div class=" text-center  mt-5 " style="margin-left:25%"><h1>نموذج طلب حجز </h1></div>

            <div class="box mt-5" style="">
              
                     <div class="form-group row ">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم :"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox type="text" ID="name" ReadOnly="true" runat="server" class="form-control w-50" name="Fname"></asp:TextBox>
                         </div>
                    </div>

                    <div class="form-group row ">
                        <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي /الوظيفي  :"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox type="text" ID="id" ReadOnly="true" runat="server" class="form-control w-50" ></asp:TextBox>
                         </div>
                    </div>

                    <div class="form-group row ">
                        <asp:Label ID="Label3" class="col-sm-2 col-form-label text-center" runat="server" Text="الكلية :"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox type="text" ID="dep"  ReadOnly="true" runat="server" class="form-control w-50" name="Fname"></asp:TextBox>
                         </div>
                    </div>

                  <div class="form-group row ">
                        <asp:Label ID="Label4" class="col-sm-2 col-form-label text-center" runat="server" Text="تاريخ حجز الجهاز :"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox  ID="cal" runat="server" type="date"  name="calender"     class="form-control w-50" ></asp:TextBox>
                         </div>
                    </div>
                <div class="form-group row ">
                    <asp:CheckBox style="width: 5%;"   class="col-sm-2 col-form-label text-center"  name="إقرار[]" id="إقرار" placeholder="إقرار" required="true"  runat="server" />
                        <div class="col-sm-10" >
                            <asp:Label ID="Label5" class="form-control w-50 text-right" style="border:transparent;" runat="server" Text="أتعهد بالمحافظة على الجهاز وملحقاته واستعماله بصورة جيدة "></asp:Label>
                         </div>
                    </div>

                <div class="form-group row mt-2" >
                                    <div class="col-sm-10 text-center">
                                        <asp:Button class="btn btn-success" style="margin-left:15%"  runat="server" OnClick="Reservation_Form_Click" Text="اتمام الطلب" />
                                    </div>
                     </div>


                </div>
            </div>
         </div>
   <%-- <h1>نموذج طلب حجز </h1>

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
    </fieldset>--%>


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