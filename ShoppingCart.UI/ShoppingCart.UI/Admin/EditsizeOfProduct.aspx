<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="EditsizeOfProduct.aspx.cs" Inherits="ShoppingCart.UI.Admin.EditsizeOfProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="edit Size"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Color"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Colourname" 
                    DataValueField="ColourId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                    SelectCommand="SELECT Colour.Colourname, Colour.ColourId, Product.ProductId FROM Product INNER JOIN Colour ON Product.ProductId = Colour.ProductId WHERE (Product.ProductId = @productId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="productId" SessionField="EditProductSize" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsize" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtsize" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtquantity" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtquantity" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click" 
                    Text="Submit" ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
