<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="ILD.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="customizedCSS/style.css" rel="stylesheet" />
      <div  class ="container   ">
               <%-- Personal Information--%>
         <div class="text-center " style="margin-left:10%;">
               <h1  >المعلومات الشخصية </h1>
         </div>
              
          
          <div class="mt-5 text-center pr-5" >
              <div class="form-group row pr-5">
                            <label for="inputName3" class="col-sm-2 col-form-label text-center ">الإسم</label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="fname" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row pr-5">
                            <label for="inputId3" class="col-sm-2 col-form-label text-center">الاسم الأخير </label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="lname" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row pr-5">
                            <label for="inputPhone3" class="col-sm-2 col-form-label text-center">رقم الجوال </label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="num" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row pr-5">
                            <label for="inputEmail3" class="col-sm-2 col-form-label text-center">البريد الإلكتروني</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control w-50" id="email" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-10">
                                    <asp:Button ID="Button1" Class="btn btn-success mt-5" runat="server" Text="تحديث البيانات" OnClick="Button1_Click" />
                              <%--<asp:Button Class="btn btn-success" ID="Button1" runat="server" Text="تحديث البيانات" OnClick="Edit_Click" />--%>
                            </div>
                       </div>
          </div>
                        
       </div>
</asp:Content>
