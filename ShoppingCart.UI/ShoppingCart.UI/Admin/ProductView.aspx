<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="ShoppingCart.UI.Admin.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <asp:Button ID="Button19" runat="server" CssClass="cmdbutton" 
        PostBackUrl="~/Admin/AddProduct.aspx" Text="Add More" Width="90px" />
    <br />
&nbsp;<asp:DataList ID="DataList1" runat="server" CellSpacing="20" 
        DataSourceID="ObjectDataSource1" RepeatColumns="4" 
        onitemcommand="DataList1_ItemCommand" Width="855px">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" 
                ImageUrl='<%# Eval("MyColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                Width="172px" CommandArgument='<%# Eval("MyColorId") %>' 
                CommandName="ProductView" />
            <br />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("ProductId") %>' CommandName="AddMore" 
                Font-Underline="True">More Colours</asp:LinkButton>
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" 
                CommandArgument='<%# Eval("ProductId") %>' CommandName="editSize" 
                Font-Underline="True">Size &amp; Quantity</asp:LinkButton>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetallData" 
    TypeName="ShoppingCart.Controller.ProductController" 
    OldValuesParameterFormatString="original_{0}">
    </asp:ObjectDataSource>
<br />
</asp:Content>
