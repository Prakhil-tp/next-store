<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="UserSearchItem.aspx.cs" Inherits="ShoppingCart.UI.Customer.UserSearchItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="datalistProductView" runat="server" 
                DataSourceID="ObjectDataSource1" 
                onitemcommand="datalistProductView_ItemCommand" RepeatColumns="4">
                <ItemTemplate>
                   
                    <div class="product_container">
                      
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                            Height="176px" 
                            ImageUrl='<%# Eval("MyColorId","~/Images/ColorImage/{0}-1.jpg") %>' 
                            style="margin-right: 2px" Width="167px" />
                        <br />
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />

                        <asp:Label ID="Label2" runat="server" CssClass="lblprice" ForeColor="#990033" 
                            Text="$"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                       
                        <asp:Button ID="cmdCart" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="CartView" 
                            CssClass="cmdbutton" Text="Cart" />
                        &nbsp;<asp:Button ID="cmdWishlist" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="WishlistView" 
                            CssClass="cmdbutton" Text="Wishlist" />
                   
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="ProductNameSearch" 
        TypeName="ShoppingCart.Controller.ProductController">
                <SelectParameters>
                    <asp:SessionParameter Name="productName" SessionField="UserSearchItem" 
                        Type="String" />
                </SelectParameters>
    </asp:ObjectDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price, Product.Colour FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId AND Colour.Colourname = Product.Colour">
            </asp:SqlDataSource>
      
            <br />
</asp:Content>
