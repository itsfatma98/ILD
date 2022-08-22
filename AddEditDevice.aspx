<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddEditDevice.aspx.cs" Inherits="ILD.Add_Edit_Devices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <link href="customizedCSS/AdminPages.css" rel="stylesheet" />--%>
  
    <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5">
            <div class="text-center" style="margin-left:25%;">
                <h1>إضافة / تعديل جهاز </h1>
            </div>
            <div class="box" style="">
                <div class="mt-5 " >
                    <div class="form-group row ">
                        <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="اسم الجهاز:"></asp:Label>
                        <div class="col-sm-10" >
                            <asp:TextBox ID="DeviceName" class="form-control w-50" runat="server" type="text"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم التسلسلي:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Serial" class="form-control w-50" runat="server" type="text"></asp:TextBox>
                        </div>

                    </div>

                    <div class="form-group row">
                        <asp:Label ID="Label3" class="col-sm-2 col-form-label text-center" runat="server" Text="العدد:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Quantity" class="form-control w-50" runat="server" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>

                    <div class="form-group row">
                        <asp:Label ID="Label4" class="col-sm-2 col-form-label text-center" runat="server" Text="صورة الجهاز:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:FileUpload ID="DeviceImg" class="form-control w-50" runat="server" />
                            <asp:Label id="UploadStatusLabel" Visible="true" runat="server"></asp:Label>

                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="Description" class="col-sm-2 col-form-label text-center" runat="server" Text="وصف الجهاز:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" class="form-control w-50" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="Label5" class="col-sm-2 col-form-label text-center" runat="server" Text="نوع الإعارة:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:ListBox Class="form-control w-50" ID="type" runat="server" SelectionMode="Single" Rows="2">
                                <asp:ListItem Text="إعارة" Value="global" />
                                <asp:ListItem Text="حجز" Value="local" />
                            </asp:ListBox>
                        </div>
                    </div>

                    <%-- save changes button--%>
                    <div class="form-group row text-center mt-4" style="margin-left:10%">
                        <div class="col-sm-10">
                            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="حفظ التغيرات" OnClick="saveChanges" />
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
            
           
   <!-- pupup JS -->
             <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
             <script src="sweetalert2.all.min.js"></script>
   <script>
       function success() {
           Swal.fire({
               title: 'شكراً لك',
               text: 'تم إضافة الجهاز  بنجاح',
               icon: 'success',
               confirmButtonColor: "#569c5a",
               confirmButtonText: 'موافق'
           }).then(function () {
               window.location.href = 'DevicesMangement.aspx';
           });

       }

       function fail() {
           Swal.fire({
               title: 'عذراً',
               text: 'يوجد جهاز مخزن مسبقا بالرقم التسلسلي المدخل ',
               icon: 'error',
               confirmButtonColor: "#569c5a",
               confirmButtonText: 'موافق'
           }).then(function () {
               window.location.href = 'DevicesMangement.aspx';
           });

       }

       function update() {
           Swal.fire({
               title: 'شكراً لك',
               text: 'تم تحديث الجهاز  بنجاح',
               icon: 'success',
               confirmButtonColor: "#569c5a",
               confirmButtonText: 'موافق'
           }).then(function () {
               window.location.href = 'DevicesMangement.aspx';
           });

       }
   </script>

</asp:Content>

