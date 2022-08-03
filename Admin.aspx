<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ILD.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="customizedCSS/sideNav.css" rel="stylesheet" />
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
    
    <div class="sidenav bg-light">

         <button class="dropdown-btn">إدارة الطلبات
            <i class="fa fa-caret-down"></i>
          </button>
         <div class="dropdown-container">
            <a href="#">الطلبات الواردة</a>
            <a href="#">الطلبات الحالية</a>
          </div>
        
          <a href="#about">إدارة الأجهزة</a>
          <a href="#services">إضافة مشرفين</a>

          <button class="dropdown-btn">التقارير
            <i class="fa fa-caret-down"></i>
          </button>
         <div class="dropdown-container">
            <a href="#">تقارير الطلبات</a>
            <a href="#">تقارير الأجهزة</a>
          </div>       
        
     </div>


    <div class="container ">
        <div class="d-flex flex-column box px-xl-5">
            <div class="bg-dark mt-5 mb-5 ">
                <div>
                    dashboard
                </div>
            </div>
                
            <div class="">
                <fieldset class="field">
                     <form action="/">
                         <div class=" personal-details">
                             <div>
                                  <label>الاسم:</label><input type="text" name="name"  id="name">
                             </div>

                             <div>
                                 <label>الرقم الوظيفي:</label><input type="text" name="idNum" id="Id">
                             </div>

                             <div>
                                <label>رقم الجوال:</label><input type="text" name="phoneNum" required>
                            </div>

                            <div>
                                 <label>البريد الالكتروني:</label><input type="email" name="email" required>
                            </div>

                             <div class="d-flex justify-content-center">
                                 <button  type="submit" href="/">إنشاء حساب</button>
                             </div>

                             
                        
                         </div>
                     
                     </form>
                 </fieldset>
            </div>
        </div>
        
    </div>



</asp:Content>
