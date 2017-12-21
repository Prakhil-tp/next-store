<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="WishlistView.aspx.cs" Inherits="ShoppingCart.UI.Customer.WishlistView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="20" 
    DataKeyField="ProductId" DataSourceID="SqlDataSource1" RepeatColumns="4" 
        onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" Width="877px">
    <ItemTemplate>
        <br />
        <div class="product_container">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                Height="147px" 
                ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                Width="170px" />
            <br />
            <asp:Label ID="ProductNameLabel" runat="server" 
                Text='<%# Eval("ProductName") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                Text="$"></asp:Label>
            &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
            <asp:Button ID="cmdRemove" runat="server" 
                CommandArgument='<%# Eval("WishlistId") %>' CommandName="WishlistRemove" 
                CssClass="cmdbutton" Text="Remove" />
            <asp:Button ID="cmdCart" runat="server" 
                CommandArgument='<%# Eval("WishlistId") %>' CommandName="MoveCart" 
                CssClass="cmdbutton" Text="Cart" Width="89px" />
        </div>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
    
        
        
        SelectCommand="SELECT Product.ProductName, Product.Price, Product.Size, Product.ProductId, Wishlist.WishlistId, Colour.ColourId, Wishlist.UserId FROM Wishlist INNER JOIN Product ON Wishlist.ProductId = Product.ProductId INNER JOIN Colour ON Wishlist.ColorId = Colour.ColourId WHERE (Wishlist.UserId = @Userid)">
    <SelectParameters>
        <asp:SessionParameter Name="Userid" SessionField="UserId" />
    </SelectParameters>
</asp:SqlDataSource>
&nbsp; 
</asp:Content>
