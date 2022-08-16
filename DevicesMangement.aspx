<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DevicesMangement.aspx.cs" Inherits="ILD.WebForm3"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="customizedCSS/AdminPages.css" rel="stylesheet" />

    
 
    <div class="container-fluid  ">
            <div class=" d-flex flex-column">
                <div class="text-center mt-5">
                    <h2 >إدارة الأجهزة</h2>
                </div>
                
                <div class="container tableContainer  mt-5">
                    <table class="table table-hover  text-center "  id="device_table"  >
                        <thead  class="bg-success">
                            <tr >
                                <th >الرقم التسلسلي للجهاز</th>
                                <th >اسم الجهاز</th>
                                <th>تعديل</th>
                                <th>حذف</th>
                            </tr>
                        </thead>

                        <tbody>
                            <asp:Repeater ID="RPTR_device" runat="server" >
                                <ItemTemplate>
                                    <tr>
                                        <td ><%#Eval("serial_number")%></td>
                                        <td><%#Eval("name")%></td>
                                        <td>
                                            <asp:Button runat="server" ID="btnEdit" class="btn btn-success" Text="تعديل" OnClick="Edit_Click" CommandArgument='<%# Eval("serial_number") %>' />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btndelete" class="btn btn-success" Text="حذف" OnClientClick="return confirm('هل تريد بالتأكيد إتمام عملية الحذف ؟');" OnClick="Del_Click" CommandArgument='<%# Eval("serial_number") %>' />
                                        </td>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                 </div>
                 <div class="container mt-2">
                            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="إضافة جهاز" OnClick="Button1_Click"  /><br />
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
               text: 'تم حذف الجهاز  بنجاح',
               icon: 'success',
               buttonsStyling: false,
               confirmButtonText: 'موافق'
           }).then(function () {
               window.location.href = 'DevicesMangement.aspx';
           });

       }
    </script>

</asp:Content>
