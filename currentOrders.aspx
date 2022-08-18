<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="currentOrders.aspx.cs" Inherits="ILD.currentOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%--  <link href="customizedCSS/AdminPages.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid  ">
        <div class=" d-flex flex-column ml-5 pl-5">
            <div class="text-center mt-5">
                <h2>طلبات الإستعارة والتمديد: </h2>
            </div>

            <!--Table for current orders (borrowing and extenstion) in xhtml code -->
            <div class="container tableContainer   mt-5">
                <table class="table table-hover  text-center " id="currentT">
                    <thead class="bg-success">
                        <tr>
                            <th>رقم الطلب</th>
                            <th>اسم الجهاز</th>
                            <th>الأسم</th>
                            <th>نوع الطلب </th>
                            <th>تم الارجاع</th>
                            <tr>
                    </thead>
                    <tbody>

                        <asp:Repeater ID="bor_table" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("request_number")%></td>
                                    <td><%#Eval("name")%></td>
                                    <td><%#Eval("Fname")%></td>
                                    <td><%#Eval("request_type")%></td>
                                    <td>
                                        <asp:Button class="btn btn-success fa fa-cloud" runat="server" ID="return" Text="تم" OnClick="btnReturn_Click" CommandArgument='<%#Eval("request_number")%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                </table>
            </div>


            <!--Table for current orders (reservation) in xhtml code -->
            <div class="text-center mt-5">
                <h2>طلبات الحجز: </h2>
            </div>

            <div class="container tableContainer  mt-5">
                <table class="table table-hover  text-center " id="currentT2">
                    <thead class="bg-success">
                        <tr>
                            <th>رقم الطلب</th>
                            <th>اسم الجهاز</th>
                            <th>الأسم</th>
                            <th>تاريخ الحجز</th>
                            <tr>
                    </thead>
                    <tbody>

                        <asp:Repeater ID="rse_table" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("request_number")%></td>
                                    <td><%#Eval("name")%></td>
                                    <td><%#Eval("Fname")%></td>
                                    <td><%#Eval("date")%></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                </table>
            </div>
        </div>
    </div>

</asp:Content>
