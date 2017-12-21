<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="ShoppingCart.UI.Admin.Discount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 99px;
    }
    .style3
    {
        width: 89px;
    }
    .style4
    {
        width: 173px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="DISCOUNT"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label2" runat="server" Text="ProductName"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TxtProductName" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TxtProductName" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" Text="ProductId"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TxtProductId" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TxtProductId" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label3" runat="server" Text="Validity"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TxtValidity" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TxtValidity" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Discount Percentage</td>
        <td class="style4">
            <asp:TextBox ID="TxtDiscountPercentage" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TxtDiscountPercentage" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            <asp:Button ID="CmdAdd" runat="server" onclick="CmdAdd_Click" Text="ADD" 
                Width="199px" ValidationGroup="a" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
