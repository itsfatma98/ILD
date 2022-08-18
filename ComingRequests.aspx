<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site2.Master" CodeBehind="ComingRequests.aspx.cs" Inherits="ILD.ComingRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid  ">
        <div class=" d-flex flex-column ml-5 pl-5">
            <div class="text-center mt-5">
    <h2>إدارة الطلبات الواردة</h2>
</div>

            <div class="container tableContainer  mt-5">
                <table class="table table-hover  text-center " id="currentT">
        <thead class="bg-success">
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
  </div>
   </div>
 
</div>


</asp:Content>