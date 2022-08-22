<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RequestForm.aspx.cs" Inherits="ILD.RequestForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="customizedCSS/FormsStyle.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5">
            
           <div class=" text-center   " style="margin-left:25%"><h1 > إستمارة الطلب </h1></div>

            <div class="box mt-4" style="">
              
                    <div class="form-group row ">
                        <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="رقم الطلب:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="request_num"  class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>   
                         </div>
                    </div>
                     
                <div class="form-group row ">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="إسم الجهاز:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="device_name" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>   
                         </div>
                  </div>
                <div class="form-group row ">
                        <asp:Label ID="Label3" class="col-sm-2 col-form-label text-center" runat="server" Text="نوع الطلب:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="req_type" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>   
                         </div>
                    </div>
                <div class="form-group row ">
                        <asp:Label ID="Label4" class="col-sm-2 col-form-label text-center" runat="server" Text="إسم المستعير:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="user_name" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>   
                         </div>
                    </div>
                       <div class="form-group row ">
                        <asp:Label ID="Label5" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي/الوظيفي:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox type="text" ID="id" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>
                        </div>
                    </div>

                <div class="form-group row ">
                            <asp:Label ID="Label8" class="col-sm-2 col-form-label text-center" runat="server" Text="البريد الإلكتروني:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox  TextMode="Email"   ID="email"  name="Gmail" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>
                            </div>
                    </div>
                <div class="form-group row ">
                            <asp:Label ID="Label7" class="col-sm-2 col-form-label text-center" runat="server" Text="رقم الجوال:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="phone" TextMode="Phone" name="phoneNum" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>
                            </div>
                    </div>

                    <div class="form-group row ">
                        <asp:Label ID="Label6" class="col-sm-2 col-form-label text-center" runat="server" Text="القسم:"></asp:Label>
                        <div class="col-sm-10">
                          <asp:textbox ID="department" type="text" class="form-control w-50" runat="server" readonly="true"></asp:textbox>
                        </div>
                    </div>

                <div class="form-group row ">
                            <asp:Label ID="Label9" class="col-sm-2 col-form-label text-center" runat="server" Text="تاريخ الإستلام:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox  ID="date1" type="text" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>
                            </div>
                    </div>
                <div class="form-group row ">
                            <asp:Label ID="Label11" class="col-sm-2 col-form-label text-center" runat="server" Text="المدة:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox  ID="duration" name=" = calender" class="form-control w-50" runat="server" readonly="true" ></asp:TextBox>
                            </div>
                    </div>

                <div class="form-group row ">
                            <asp:Label ID="Label10" class="col-sm-2 col-form-label text-center" runat="server" Text="تاريخ التسليم:"></asp:Label>
                            <div class="col-sm-10">
                                 <asp:textbox textmode="date" id="date2" name="calender"  class="form-control w-50"  runat="server" ></asp:textbox>
                            </div>
                    </div>

                <div class="form-group row ">
                            <asp:Label ID="Label12" class="col-sm-2 col-form-label text-center" runat="server" Text="الموافقة على الطلب:"></asp:Label>
                            <div class="col-sm-10 text-right mt-2 ">
                                 <asp:RadioButton style="width: 10%;" id="acc" text="قبول" runat="server" type="radio" name="indoor-outdoor" GroupName="response"></asp:RadioButton>
                                 <asp:RadioButton style="width: 50%; margin-right:20%" id="RadioButton1" text="رفض" runat="server" type="radio" name="indoor-outdoor" GroupName="response"></asp:RadioButton>
                            </div>
                    </div>

                <div class="form-group row text-center  mb-4">
                        <div class="col-sm-10 ">
                             <asp:Button ID="Button2" class="btn btn-success " style="margin-left:15%"  runat="server" text="حفظ التغييرات" type="submit"  OnClick="Button_click" />
                        </div>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

                    </div>

                    
                    
                    

                </div>
            </div>
         </div>

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

</form>
</asp:Content>