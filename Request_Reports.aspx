<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Request_Reports.aspx.cs" Inherits="ILD.Request_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<h2>إدارة الأجهزة</h2>--%>

    <p style="text-align: center; font-size: 23px; width: 60%;">طلبات الإستعارة والتمديد: </p>
        <br>
        <table class="center" id="currentT">
            <thead>
                <tr>
                    <th>اسم الجهاز</th>
                    <th>اسم المستعير</th>
                    <th>حالة الطلب</th>
                    <th>تاريخ الطلب</th>
                    <th>تاريخ التسليم</th>
                    <th>الرقم الوظيفي للمشرف</th>
                    <th>اسم المشرف</th>
                    <tr>
            </thead>
            <tbody>

                <asp:Repeater ID="bor_table" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("name")%></td>
                            <td><%#Eval("Fname")%></td>
                            <td><%#Eval("status")%></td>
                            <td><%#Eval("start_date")%></td>
                            <td><%#Eval("return_date")%></td>
                            <td><%#Eval("admin_id")%></td>

                            <%--<td><asp:Button runat="server" class="btn btn-default" ID="btnMed" Text = "حالة الجهاز"  OnClick="btnStatus_Click" Visible="true" CommandArgument = '<%# Eval("Device_ID") %>'/> </td>
                                            <td><asp:Button runat="server" class="btn btn-default" ID="btnEdit" Text = "تعديل"  OnClick="btnEdit_Click" CommandArgument = '<%# Eval("Device_ID") %>'/></td>
                                            <td><asp:Button runat="server" class="btn btn-default" ID="btndelete" Text="حذف" OnClientClick="return confirm('هل تريد بالتأكيد إتمام عملية الحذف ؟');" OnClick="btnDel_Click" CommandArgument = '<%# Eval("Device_ID") %>'/></td>
                            --%>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
   
</asp:Content>
