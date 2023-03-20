<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ILD.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="customizedCSS/sideNav.css" rel="stylesheet" />
 <div class="container-fluid">
   <div class="row">
        <div id="mySidenav"  class="sidenav  text-right ">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
             <button class="dropdown-btn">إدارة الطلبات
                <i class="fa fa-caret-down"></i>
              </button>
             <div class="dropdown-container">
                <a class="innerFont" href="#"> <span class="innerFont">الطلبات الواردة</span>   </a>
                <a class="innerFont" href="#"><span class="innerFont">الطلبات الحالية</span></a>
              </div>
        
              <a href="#about">إدارة الأجهزة</a>
              <a href="#services">إضافة مشرفين</a>

              <button class="dropdown-btn">التقارير
                <i class="fa fa-caret-down"></i>
              </button>
             <div class="dropdown-container">
                <a  href="#"><span class="innerFont">تقارير الطلبات</span></a>
                <a class="innerFont" href="#"><span class="innerFont">تقارير الأجهزة</span></a>
              </div>  
            
       </div>
        <span style="font-size:30px;cursor:pointer ;float:right; margin-right:2%;" onclick="openNav() ">&#9776; أنقر</span>
      
    <%--side nav bar end--%>

    <%--left section--%>
    <div  class ="container  " >
        <div class="d-flex flex-column  px-xl-5"> 
                <%--Dashboard--%>
                <div class=" mt-5 mb-5 h-auto box">
                    <div>
                        <img src="img/dashboard.png" class="h-100 w-100 pl-5 pr-5 pt-2 pb-2"/>
                    </div>
                </div>
               <%-- Personal Information--%>
                <div class="h-auto box" >
                    <form runat="server">

                        <div class="form-group row">
                            <label for="inputName3" class="col-sm-2 col-form-label text-center ">الإسم الأول</label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="fname" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputId3" class="col-sm-2 col-form-label text-center">الاسم الأخير </label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="lname" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputPhone3" class="col-sm-2 col-form-label text-center">رقم الجوال </label>
                            <div class="col-sm-10">
                              <input class="form-control w-50" id="num" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label text-center">البريد الإلكتروني</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control w-50" id="email" runat="server" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-10">
                                <asp:Button Class="btn btn-success" ID="Button1" runat="server" Text="تحديث البيانات" OnClick="Edit_Click" />
         
                            </div>
                       </div>
                    </form>
                </div>
        </div>
        
    </div>

   </div>
     </div>
    <%--side nav bar right--%>

    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "200px";
            document.getElementById("main").style.marginLeft = "200px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
        }
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    
    </script>
</asp:Content>
