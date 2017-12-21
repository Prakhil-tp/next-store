<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="ViewProductBrand.aspx.cs" Inherits="ShoppingCart.UI.Customer.ViewProductBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList2" runat="server" DataKeyField="ProductId" 
        DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            <br />
            <div class="product_container">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                    Height="163px" 
                    ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                    style="margin-right: 2px" Width="172px" />
                <br />
                <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                    Text='<%# Eval("ProductName") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                    Text="$ "></asp:Label>
                <asp:Label ID="PriceLabel" runat="server" ForeColor="#990033" 
                    Text='<%# Eval("Price") %>' />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Size : "></asp:Label>
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                <br />
                <asp:Label ID="BrandNameLabel" runat="server" CssClass="lbl" 
                    Text='<%# Eval("BrandName") %>'></asp:Label>
            </div>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT Brand.BrandName, Product.ProductId, Product.ProductName, Product.Price, Product.Size, Brand.BrandId, Colour.ColourId FROM Brand INNER JOIN Product ON Brand.BrandId = Product.BrandId INNER JOIN Colour ON Product.ProductId = Colour.ProductId WHERE (Brand.BrandId = @BrandId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenFieldbrand" Name="BrandId" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="HiddenFieldbrand" runat="server" />
</asp:Content>
