<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="CartView.aspx.cs" Inherits="ShoppingCart.UI.Customer.CartView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Button ID="cmdcheckout" runat="server" Text="CheckOut" 
        onclick="cmdcheckout_Click" CssClass="cmdbutton" />
<br /><br />
    <%--<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
    onselectedindexchanged="DataList1_SelectedIndexChanged" CellSpacing="20" 
    DataKeyField="CartId" onitemcommand="DataList1_ItemCommand" RepeatColumns="3">
    <ItemTemplate>
        <br />
        <div class="product_container">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="185px" 
                ImageUrl='<%# Eval("ProductId", "~/Images/ProductImage/{0}.jpg") %>' 
                Width="174px" />
            <br />
            <asp:Label ID="ProductNameLabel" runat="server" 
                Text='<%# Eval("ProductName") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                Text="$"></asp:Label>
            &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("CartId") %>' CommandName="Remove" 
                onclick="Page_Load">Remove</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" 
                CommandArgument='<%# Eval("ProductId") %>' CommandName="WishlistMove">Move to Wishlist</asp:LinkButton>
        </div>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
    SelectCommand="SELECT Cart.CartId, Cart.UserId, Cart.ProductId, Cart.Quantity, Cart.Date, Product.ProductName, Product.Price, Product.Size FROM Cart INNER JOIN Product ON Cart.ProductId = Product.ProductId">
</asp:SqlDataSource>--%>
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;
    <asp:DataList ID="datalistCartView" runat="server" 
        DataSourceID="SqlDataSource3" RepeatColumns="4" 
        RepeatDirection="Horizontal" onitemcommand="datalistCartView_ItemCommand">
        <ItemTemplate>
            <br />
            <div class="product_container">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="170px" 
                    ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                    Width="169px" />
                <br />
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Eval("ProductName") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                    Text="$"></asp:Label>
                &nbsp;
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                <asp:Button ID="cmdRemove" runat="server" 
                    CommandArgument='<%# Eval("CartId") %>' CommandName="Remove" 
                    CssClass="cmdbutton" Text="Remove" />
                &nbsp;<asp:Button ID="cmdWishlist" runat="server" 
                    CommandArgument='<%# Eval("ColourId") %>' CommandName="WishlistMove" 
                    CssClass="cmdbutton" Text="Wishlist" />
            </div>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        
        SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Cart.CartId, Cart.ColourId AS Expr1, Product.Price, Product.ProductName, Cart.UserId FROM Cart INNER JOIN Colour ON Cart.ColourId = Colour.ColourId INNER JOIN Product ON Cart.ProductId = Product.ProductId WHERE (Cart.UserId = @userid)">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="UserId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
