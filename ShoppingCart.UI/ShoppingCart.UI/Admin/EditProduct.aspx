<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ShoppingCart.UI.Admin.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 131px;
        }
        .style3
        {
            width: 74px;
        }
        .style4
        {
            width: 11px;
        }
        .style5
        {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lbCaptionEdit" runat="server" Text="Edit Product here"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style4">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TxtName" runat="server" Width="161px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtName" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtPrice" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lbSize" runat="server" Text="Size"></asp:Label>
            </td>
            <td class="style4">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TxtSize" runat="server" Width="159px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtSize" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Stock"></asp:Label>
            </td>
            <td class="style4">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TxtStock" runat="server" Width="159px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TxtStock" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style4">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TxtDesc" runat="server" TextMode="MultiLine" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtDesc" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5">
                <asp:Button ID="cmdUpdate" runat="server" onclick="cmdUpdate_Click" 
                    Text="Update" ValidationGroup="a" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
