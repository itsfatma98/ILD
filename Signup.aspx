<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ILD.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>إنشاء حساب</h1>
   
       
            <div class="personal-details">
                <div>
                       <asp:label runat="server">الاسم الأول:</asp:label><asp:textbox type="text" ID="Fname" runat="server" name="Fname" required="true"></asp:textbox></div>  
                    <div>
                        <asp:label runat="server">الاسم الأخير:</asp:label><asp:textbox type="text" ID="Lname" runat="server" name="Lname" required="true" ></asp:textbox></div>
                    <div>
                        <asp:label runat="server">الرقم الجامعي/الوظيفي:</asp:label><asp:textbox type="text" ID="id" runat="server" name="name" required="true"></asp:textbox>
                    <asp:label runat="server">الكلية:</asp:label>   <asp:DropDownList class="form-control" ID="department" runat="server" required="true">
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
                    
                    <div>
                        <asp:label runat="server">رقم الجوال:</asp:label><asp:textbox type="text" ID="phone" runat="server" name="phoneNum" required="true"></asp:textbox>
                    </div>
                    <div>
                        <asp:label runat="server">البريد الالكتروني (الجامعي):</asp:label><asp:textbox type="email" ID="email" runat="server" name="Gmail" required="true"></asp:textbox>
                    </div>
                    <div>
                        <asp:label runat="server">كلمة المرور:</asp:label><asp:textbox type="password" ID="password" runat="server" name="pass" required="true"></asp:textbox>
                    </div>
                    <div>
                        <asp:label runat="server">تأكيد كلمة المرور:</asp:label><asp:textbox type="password" ID="confirm_password" runat="server" name="pass2" required="true"></asp:textbox>
                        
                    </div>
                       
            </div>
            <center>
                <br>
                <br>
                <div>
                 <asp:Button class="btn btn-success" ID="Button1"  runat="server" Text="انشاء حساب" OnClick="Button1_Click" /></div>
                        
                   
               
     </center>
   
    </fieldset>

</asp:Content>