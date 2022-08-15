<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeviceReports.aspx.cs" Inherits="ILD.DeviceReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="customizedCSS/AdminPages.css" rel="stylesheet" />
     <h2>تقارير الأجهزة</h2>

    <table class="table" id="device_table">
        <thead>
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
</asp:Content>
