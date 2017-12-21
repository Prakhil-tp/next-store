<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="ViewAllCartProduct.aspx.cs" Inherits="ShoppingCart.UI.Admin.ViewAllCartProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            RepeatColumns="3">
            <ItemTemplate>
                <br />
                <div class="product_container">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                        Height="138px" 
                        ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                        Width="153px" />
                    <br />
                    <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                        Text='<%# Eval("ProductName") %>' />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                        Text="$"></asp:Label>
                    &nbsp;<asp:Label ID="PriceLabel" runat="server" CssClass="lblprice" 
                        Text='<%# Eval("Price") %>' />
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="UserName : "></asp:Label>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Quantity :"></asp:Label>
                    &nbsp;<asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="Size : "></asp:Label>
                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
            SelectCommand="SELECT Cart.ColourId, Product.ProductName, Product.Price, RegisteredUser.Name, Cart.Quantity, Cart.Size FROM Cart INNER JOIN RegisteredUser ON Cart.UserId = RegisteredUser.UserId INNER JOIN Product ON Cart.ProductId = Product.ProductId">
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
