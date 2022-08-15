<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ComingRequests.aspx.cs" Inherits="ILD.ComingRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <h2>إدارة الطلبات الواردة</h2>
        </center>

    <table class="table" id="device_table">
        <thead>
            <tr>
                <th>رقم الطلب
                </th>
                <th>اسم الجهاز
                </th>
                <th>اسم المستعير
                </th>
                <th>نوع الطلب
                </th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RPTR_request" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton runat="server" text='<%# Eval("request_number") %>' ID="reqnum" OnClick="Reqnum_Click" CommandArgument='<%# Eval("request_number") %>' />
                            <script language="C#" runat="server">
 
 
   </script>
                        </td>
                        <td><%#Eval("name")%></td>
                        <td><%#Eval("Fname")%></td>
                        <td><%#Eval("request_type")%></td>
                       
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    



</asp:Content>