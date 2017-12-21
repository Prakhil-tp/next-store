<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="ProductNameSearch.aspx.cs" Inherits="ShoppingCart.UI.Customer.ProductNameSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        dsgfdghhg</p>
    <p>
        <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource1" 
            RepeatColumns="3" Width="528px">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="112px" 
                    Width="142px" />
                <br />
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                BrandId:
                <asp:Label ID="BrandIdLabel" runat="server" Text='<%# Eval("BrandId") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Size:
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                <br />
                Stock:
                <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                <br />
                CategoryId:
                <asp:Label ID="CategoryIdLabel" runat="server" 
                    Text='<%# Eval("CategoryId") %>' />
                <br />
                Colour:
                <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
                <br />
                MyColorId:
                <asp:Label ID="MyColorIdLabel" runat="server" Text='<%# Eval("MyColorId") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ProductNameSearch" 
            TypeName="ShoppingCart.Controller.ProductController">
            <SelectParameters>
                <asp:SessionParameter Name="productName" SessionField="SearchItem" 
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>
