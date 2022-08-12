<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ILD.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   <div class="container-fluid">
        <div class="d-flex flex-column  px-xl-5">
            <div class="text-center mt-5 mr-5 " >
                 <h1> تسجيل الدخول </h1>
             </div>

             <div class="box" >
                 <div  class="mt-5" style="margin-right:25%">
                     <div class="form-group row ">
                                <asp:Label ID="Label1" class="col-sm-2 col-form-label text-center" runat="server" Text="الرقم الجامعي/الوظيفي:"></asp:Label>
                                <div class="col-sm-10" >
                                    <input type="text"  ID="usid" class="form-control w-50" runat="server" required>
                                </div>
                    </div>
                     

                    <div class="form-group row ">
                                <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="كلمة المرور:"></asp:Label>
                                <div class="col-sm-10" >
                                    <input type="password" ID="passw" class="form-control w-50" runat="server" required></div>
                                </div>     
                     </div>

                ``` <div class="form-group row text-left" style="margin-left:15%">
                        <div class="col-sm-10 "  >
                            <a href="#">هل نسيت كلمة المرور؟</a>
                        </div>
                         
                    </div >

                      
                <center>        
                     <div class="form-group row mt-2 w-50 ">
                              <asp:Label ID="Label3" class="col-sm-2" ></asp:Label>
                             <div class="col-sm-10 text-center" style="padding-right:25%">

                                  <asp:Button ID="Button2" class="btn btn-success"  runat="server" Text="تسجيل الدخول" OnClick="login_Click" />
                            </div>
                        
                     </div>
                </center>
                        
                <%--<--center>
                    <div class="form-group row mt-2 w-50">
                                <div class="col-sm-10 text-center btn btn-success " style="padding-right:25%">
                                    <asp:Button ID="Button3"   runat="server" Text="إنشاء حساب جديد" OnClick="SignUp_Click" />
                                </div>
                       </div>
                </center> --%>

                 
<%--                    <div class="form-group row mt-2 ">
                        <div class="col-sm-10 text-center  " style="padding-right:25%">
                            <label Style="color:red" id="mylabel" runat="server" Visible="true">عفوا لايوجد مستخدم  بهذا الرقم الوظيفي أو الجامعي</label> 
                        </div>
                         
                    </div>--%>
                     
              </div>

        </div>
    </div>
</asp:Content>