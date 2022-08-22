<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="ILD.UserForm" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/AdminPages.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <div class="container-fluid">
        <div class=" container d-flex flex-column px-xl-5 ml-5 pl-5">
            
           <div class=" text-center  mt-5 " style="margin-left:25%"><h1 > المعلومات الشخصية </h1></div>

            <div class="box mt-5" style="">
              
                     <div class="form-group row ">
                        <asp:Label ID="Label2" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم الأول:"></asp:Label>
                        <div class="col-sm-10" >
                             <asp:TextBox type="text" ID="FirstName" runat="server" class="form-control w-50" name="Fname" required="true"></asp:TextBox>
                         </div>
                    </div>
                            

                     
                    <div class="form-group row ">
                        <asp:Label ID="Label3" class="col-sm-2 col-form-label text-center" runat="server" Text="الإسم الأخير:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox type="text" ID="LastName" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                        </div>
                    </div>

                                
                     <div class="form-group row ">
                        <asp:Label ID="Label4" class="col-sm-2 col-form-label text-center" runat="server" Text="القسم:"></asp:Label>
                        <div class="col-sm-10">
                            <asp:DropDownList class="form-control w-50" ID="depa" runat="server" required="true">
                                <asp:ListItem Text="اختر" Value="select" />
                                <asp:ListItem Text="الحاسبات  وتقنية المعلومات" Value="الحاسبات وتقنية المعلومات" />
                                <asp:ListItem Text="العلوم" Value="العلوم" />
                                <asp:ListItem Text="الاقتصاد والادارة" Value="الاقتصاد والادارة" />
                                <asp:ListItem Text="الهندسة" Value="الهندسة" />
                                <asp:ListItem Text="الآداب والعلوم الانسانية" Value="الآداب والعلوم الانسانية" />
                                <asp:ListItem Text="السياحة" Value="السياحة" />
                                <asp:ListItem Text="الطب" Value="الطب" />
                                <asp:ListItem Text="الحقوق" Value="الحقوق" />
                                <asp:ListItem Text="طب الأسنان" Value="طب الأسنان" />
                                <asp:ListItem Text="الصيدلة" Value="الصيدلة" />
                                <asp:ListItem Text="علوم الانسان والتصاميم" Value="علوم الانسان والتصاميم" />
                                <asp:ListItem Text="الاتصال والاعلام" Value="الاتصال والاعلام" />
                                <asp:ListItem Text="العلوم التطبيقية" Value="العلوم التطبيقية" />
                                <asp:ListItem Text="التمريض" Value="التمريض" />
                                <asp:ListItem Text="الدراسات العليا التربوية" Value="الدراسات العليا التربوية" />
                                <asp:ListItem Text="علوم التأهيل الطبي" Value="علوم التأهيل" />

                          </asp:DropDownList>
                        </div>
                    </div>
                     <div class="form-group row ">
                            <asp:Label ID="Label5" class="col-sm-2 col-form-label text-center" runat="server" Text="رقم الجوال:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="Phonenumber" TextMode="Phone" name="phoneNum" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                            </div>
                     </div>

                <div class="form-group row ">
                            <asp:Label ID="Label6" class="col-sm-2 col-form-label text-center" runat="server" Text="البريد الإلكتروني:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox  TextMode="Email"   ID="email"  name="Gmail" class="form-control w-50" runat="server" required="true" ></asp:TextBox>
                            </div>
                    </div>
                    
                               
                                <div class="form-group row mt-2" >
                                    <div class="col-sm-10 text-center">
                                        <asp:Button class="btn btn-success" Style="margin-left: 80px;" ID="Button2" runat="server" OnClick="Edit_Click" Text="تحديث البيانات" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
              
                <br />




                <%-----------------------------------------------------------------------------------------------%>
                <hr />
                <div class="text-center mt-5">
                    <h2>الطلبات</h2>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-2" style="align-content: center"></div>
                        <div class="col-md-8" style="text-align: center">
                            <asp:Label ID="Label1" runat="server" class="ml-2" Text="تصفية حسب:"></asp:Label>
                            <asp:DropDownList class="ml-3 btn btn-secondary dropdown-toggle" ID="DropDownList1" Style="background-color: white; color: black; width: 25%;" runat="server"></asp:DropDownList>
                            <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="استعلام" OnClick="reportClick" Style="width: auto" />

                        </div>
                        <div class="col-md-2" style="align-content: center"></div>
                    </div>
                </div>
            
            <br />
            <div id="div1" runat="server">
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

            <div id="div2" runat="server">
                <table class="table table-hover  text-center " id="Table1">
                    <thead class="bg-success">
                        <tr>
                            <th>اسم الجهاز</th>
                            <th>اسم المستعير</th>
                            <th>تاريخ الحجز</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
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