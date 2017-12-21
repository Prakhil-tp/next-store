<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="ShoppingCart.UI.Customer.UserHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="amazingslider-1" style="display:block;position:relative;margin:16px auto 32px;">
        <ul class="amazingslider-slides" style="display:none;">
            <li><img src="../Images/SliderImg/8.png" alt="url" /></li>
            <li><img src="../Images/SliderImg/12.png" alt="download" /></li>
            <li><img src="../Images/SliderImg/9.png" alt="gallery_banner" /></li>
             <li><img src="../Images/SliderImg/1.png" alt="gallery_banner" /></li>
              <li><img src="../Images/SliderImg/7.png" alt="gallery_banner" /></li>
            </ul>
        <div class="amazingslider-engine" style="display:none;"><a href="http://amazingslider.com">jQuery Slideshow</a></div>
    </div>
   
    <script src="../sliderengine/amazingslider.js" type="text/javascript"></script>
    <script src="../sliderengine/initslider-1.js" type="text/javascript"></script>
</asp:Content>
