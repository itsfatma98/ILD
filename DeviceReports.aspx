<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeviceReports.aspx.cs" Inherits="ILD.DeviceReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<link href="customizedCSS/AdminPages.css" rel="stylesheet" />--%>

     <div class="container-fluid  ">
        <div class=" d-flex flex-column">
            <div class="text-center mt-5">
     <h2>تقارير الأجهزة</h2>
                </div>

<div class="container tableContainer  mt-5 ml-5 pl-5">
    <table class="table table-hover  text-center " id="device_table">
        <thead  class="bg-success">
            <tr>
                <th>الرقم التسلسلي
                </th>
                <th>اسم الجهاز
                </th>
                <th>الكمية الكلية
                </th>
                <th>الكمية المتوفرة
                </th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RPTR_device" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("serial_number")%></td>
                        <td><%#Eval("name")%></td>
                        <td><%#Eval("total_quantity")%></td>
                        <td><%#Eval("available_quantity")%></td>
                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
     </div>
            </div>
         </div>
</asp:Content>
