<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="WishlistViewDesign.aspx.cs" Inherits="ShoppingCart.UI.Customer.WishlistViewDesign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../Css/jquery-1.10.2.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $(".wishlistview").mouseenter(function () {
            $(".wishlistviewContent").css({ 'display': 'block' });
        });
    });
</script>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
    RepeatColumns="4" RepeatDirection="Horizontal" Width="770px">
    <ItemTemplate>
        <br />
<br />
        <div class="wishlistview">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                CommandArgument='<%# Eval("ColorId") %>' CommandName="ProductView" 
                Height="119px" 
                ImageUrl='<%# Eval("ColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                Width="152px" />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" 
                Text='<%# Eval("ProductName") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" 
                Text='<%# Eval("ProductPrice") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
        </div>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetWishlistViewData" 
    TypeName="ShoppingCart.Controller.WishlistController">
</asp:ObjectDataSource>
    <br />
<div class="wishlistviewContent">

    <asp:Button ID="Button19" runat="server" Text="Button" />
&nbsp;&nbsp;
    <asp:Button ID="Button20" runat="server" Text="Button" />

</div>
</asp:Content>
