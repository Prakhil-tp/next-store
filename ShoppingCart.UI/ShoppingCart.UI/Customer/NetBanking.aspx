<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="NetBanking.aspx.cs" Inherits="ShoppingCart.UI.Customer.NetBanking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
  
    .style2
    {
        width: 93px;
    }
    .style3
    {
        width: 103px;
    }
    .style5
    {
        width: 12px;
    }
    .style6
    {
            width: 139px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="LbPayment" runat="server" Font-Bold="True" Font-Size="Larger" 
                Text="Payment"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbBankName" runat="server" Text="BankName"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:DropDownList ID="DropDownListBankName" runat="server" Height="26px" 
                Width="142px">
                <asp:ListItem>Axis Bank</asp:ListItem>
                <asp:ListItem>SBI</asp:ListItem>
                <asp:ListItem>SouthIndian Bank</asp:ListItem>
                <asp:ListItem>Canara</asp:ListItem>
                <asp:ListItem>CSB</asp:ListItem>
                <asp:ListItem>Federal Bank</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbCustomerName" runat="server" Text="CustomerName"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtCustomerName" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TxtCustomerName" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbAccountNo" runat="server" Text="AccountNo"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtAccountNo" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbPinNo" runat="server" Text="Pin"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtPinNo" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TxtPinNo" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbCvvNo" runat="server" Text="CvvNo"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtCvvNo" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TxtCvvNo" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbCardNo" runat="server" Text="CardNo"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtCardNo" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TxtCardNo" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbValidity" runat="server" Text="Validity"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TxtValidity" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TxtValidity" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="LbTotalAmount" runat="server" Text="TotalAmount"></asp:Label>
        </td>
        <td class="style5">
            <asp:Label ID="Label9" runat="server" Text=":"></asp:Label>
        </td>
        <td class="style6">
            <asp:Label ID="LabelTotalPrice" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="cmdSubmit" runat="server" onclick="cmdSubmit_Click" 
                            Text="Submit" CssClass="cmdbutton" ValidationGroup="a" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
