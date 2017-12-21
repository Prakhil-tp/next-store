<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="ShoppingCart.UI.Admin.EditBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style18
    {
        width: 70%;
        height: 335px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    dsdfs
<br />
<table class="style18">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="EDIT BRAND"></asp:Label>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                <asp:Label ID="Label2" runat="server" Text="BrandName"></asp:Label>
            </td>
        <td>
                <asp:TextBox ID="txtbname" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtbname" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Logo :"></asp:Label>
        </td>
        <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
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
            &nbsp;</td>
        <td>
                <asp:Button ID="Cmd_Edit" runat="server" onclick="Cmd_Edit_Click" 
                    Text="Update" CssClass="cmdbutton" ValidationGroup="a" />
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
