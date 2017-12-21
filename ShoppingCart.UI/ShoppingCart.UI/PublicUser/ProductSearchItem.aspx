<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="ProductSearchItem.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.ProductSearchItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList2" runat="server" 
            DataSourceID="ObjectDataSourceProductSearchItem" RepeatColumns="3" 
            Width="533px">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    CommandArgument='<%# Eval("MyColorId") %>' Height="140px" 
                    ImageUrl='<%# Eval("MyColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                    Width="153px" />
                <br />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ObjectDataSourceProductSearchItem" runat="server" 
            SelectMethod="ProductNameSearch" 
            TypeName="ShoppingCart.Controller.ProductController">
            <SelectParameters>
                <asp:SessionParameter Name="productName" SessionField="SearchItem" 
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>
