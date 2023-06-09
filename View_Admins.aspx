﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="View_Admins.aspx.cs" Inherits="ILD.View_Admins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--  <link href="customizedCSS/AdminPages.css" rel="stylesheet" />--%>
        <div class="container-fluid  ">
            <div class=" d-flex flex-column ml-5 pl-5">
                <div class="text-center mt-5">
                    <h2>استعراض المشرفين</h2>
                </div>
                <div class="container tableContainer  mt-5">
                    <table class="table table-hover  text-center " id="device_table">
                        <thead class="bg-success">
                            <tr>
                                <th>الرقم الوظيفي</th>
                                <th>اسم المشرف</th>
                                <th>حذف</th>
                            </tr>
                        </thead>

                        <tbody>
                            <asp:Repeater ID="RPTR_device" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Id")%></td>
                                        <td><%#Eval("Fname")%></td>

                                        <td>
                                            <asp:Button runat="server" ID="btndelete" class="btn btn-success" Text="حذف" OnClientClick="return confirm('هل تريد بالتأكيد إتمام عملية الحذف ؟');" OnClick="Del_Click" CommandArgument='<%# Eval("Id") %>' />
                                        </td>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    <script>
        function success() {
            Swal.fire({
                title: 'شكراً لك',
                text: 'تم حذف المشرف بنجاح',
                icon: 'success',
                buttonsStyling: false,
                confirmButtonText: 'موافق'
            }).then(function () {
                window.location.href = 'AdminProfile.aspx';
            });
        }
    </script>
    
</asp:Content>
