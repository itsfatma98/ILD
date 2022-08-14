<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAdmins.aspx.cs" Inherits="ILD.ViewAdmins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
    <link href="customizedCSS/AdminPages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">

        <div class="container-fluid  ">
            <div class=" d-flex flex-column">
                <div class="text-center mt-5">
                    <h2>إستعراض المشرفين</h2>

                    <table class="table" id="Admin_table">
                        <thead>
                            <tr>
                                <th>الرقم الوظيفي
                                </th>
                                <th>اسم المشرف
                                </th>
                                <th>حذف
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RPTR_Admin" runat="server">
                                <itemtemplate>
                                    <tr>
                                        <td><%#Eval("Id")%></td>
                                        <td><%#Eval("Fname")%></td>
                                        <td>
                                            <asp:Button class="btn btn-success" runat="server" ID="btndelete" Text="حذف" OnClientClick="return confirm('هل تريد بالتأكيد إتمام عملية الحذف ؟');" OnClick="btnDel_Click" CommandArgument='<%# Eval("Id") %>' />
                                        </td>
                                    </tr>
                                </itemtemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>

</asp:Content>
