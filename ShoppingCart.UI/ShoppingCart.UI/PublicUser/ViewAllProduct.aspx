<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="ViewAllProduct.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.ViewAllProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="datalistProductView" runat="server" DataKeyField="ColourId" 
                DataSourceID="SqlDataSource3"  RepeatColumns="4" 
        onitemcommand="datalistProductView_ItemCommand">
        <ItemTemplate>
                    &nbsp;&nbsp;
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                            Height="204px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            style="margin-right: 2px" Width="172px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' CssClass="lbl" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="#990033" Text="$" 
                            CssClass="lblprice"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" ForeColor="#990033" 
                            Text='<%# Eval("Price") %>' CssClass="lblprice" />
            </div>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                
                
        SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price, Product.Colour FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId AND Colour.Colourname = Product.Colour">
    </asp:SqlDataSource>
</asp:Content>
