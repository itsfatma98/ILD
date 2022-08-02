<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Edit_Devices.aspx.cs" Inherits="ILD.Add_Edit_Devices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="customizedCSS/FormsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body    style="background: url(img/w3.JFIF); background-repeat: no-repeat; background-position: center center; background-size: cover;">
       
            <h1> اضافة / تعديل جهاز </h1>
            <fieldset> <form action="/">
                <div class="personal-details">
                    <div>
                        <div><label>اسم الجهاز:</label><input type="text" name="name" required></div>
                        <div><label>الرقم:</label><input type="text" name="name"></div>
                        <label>الكمية:</label>
                        <select name="الكمية:">
                            <option value=""></option>
                            <option value="one"> 1 </option>
                            <option value="two">2</option>
                            <option value="3">3 </option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                        <div><label>صورة:</label><input type="file" name="myImage" accept="image/png, image/gif, image/jpeg" /></div>
                        <div><label for="description">وصف الجهاز:</label></div>
                        
                        
                            <p>
                            <textarea id="description" name="" rows="9" cols="50"></textarea>
                                </p>
                        
                    </div>
                    <center>
                        <button class="d-flex justify-content-center" type="submit" href="/">حفظ التغييرات </button>
                    </center>
                </div> 
                       </form>
            </fieldset>
   
</body>
</asp:Content>
