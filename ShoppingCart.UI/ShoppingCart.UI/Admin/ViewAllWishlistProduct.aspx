<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="ViewAllWishlistProduct.aspx.cs" Inherits="ShoppingCart.UI.Admin.ViewAllWishlistProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" CellSpacing="20" 
            DataSourceID="SqlDataSource1" RepeatColumns="4">
            <ItemTemplate>
                <br />
                <div class="product_container">
                    <asp:Image ID="Image1" runat="server" Height="185px" 
                        ImageUrl='<%# Eval("ColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                        Width="174px" />
                    <br />
                    <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                        Text='<%# Eval("ProductName") %>' />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Customer :"></asp:Label>
                    &nbsp;<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="lblprice" ForeColor="#990033" 
                        Text="$"></asp:Label>
                    &nbsp;
                    <asp:Label ID="PriceLabel" runat="server" CssClass="lblprice" 
                        Text='<%# Eval("Price") %>' />
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
            SelectCommand="SELECT RegisteredUser.Name, Wishlist.ColorId, Product.ProductName, Product.Price FROM Product INNER JOIN Wishlist ON Product.ProductId = Wishlist.ProductId INNER JOIN RegisteredUser ON Wishlist.UserId = RegisteredUser.UserId AND Wishlist.UserId = RegisteredUser.UserId">
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
