<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="ViewProductCategory.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.ViewProductCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:HiddenField ID="HiddenFieldcategory" runat="server" />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryId" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
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
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Size : "></asp:Label>
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                <br />
                <asp:Label ID="CategoryNameLabel" runat="server" CssClass="lbl" 
                    Text='<%# Eval("CategoryName") %>' />
            </div>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT Category.CategoryId, Category.CategoryName, Product.ProductName, Product.ProductId, Product.Colour, Product.Price, Product.Size, Colour.Colourname, Colour.ColourId FROM Category INNER JOIN Product ON Category.CategoryId = Product.CaregoryId INNER JOIN Colour ON Product.ProductId = Colour.ProductId AND Product.Colour = Colour.Colourname WHERE (Category.CategoryId = @categoryId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenFieldcategory" Name="categoryId" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
