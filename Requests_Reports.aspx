<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Requests_Reports.aspx.cs" Inherits="ILD.Requests_Reports1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--   <link href="customizedCSS/AdminPages.css" rel="stylesheet" />--%>
        <div class="container-fluid  ">
            <div class=" d-flex flex-column ml-5 pl-5">
                <div class="text-center mt-5">
                    <h2>تقرير الطلبات</h2>
                </div>
                <div class="container tableContainer  mt-5">
                    <table class="table table-hover  text-center " id="device_table">
                        <thead class="bg-success">
                            <tr>
                                <th>اسم الجهاز</th>
                                <th>اسم المستعير</th>
                                <th>حالة الطلب</th>
                                <th>تاريخ الطلب</th>
                                <th>تاريخ التسليم</th>
                                <th>الرقم الوظيفي للمشرف</th>
                                <th>اسم المشرف</th>
                            </tr>
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
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</asp:Content>
