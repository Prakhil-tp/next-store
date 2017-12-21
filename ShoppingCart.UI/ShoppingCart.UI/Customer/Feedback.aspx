<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ShoppingCart.UI.Customer.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 307px;
        }
        .style4
        {
            width: 11px;
        }
        .style5
        {
            width: 107px;
        }
        .style6
        {
            width: 379px;
        }
        .style7
        {
            height: 4px;
        }
        .style8
        {
            width: 379px;
            height: 4px;
        }
        .style9
        {
            height: 153px;
        }
        .style10
        {
            width: 379px;
            height: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Add Feedback"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                <asp:TextBox ID="TxtFeedback" runat="server" Height="149px" 
                    TextMode="MultiLine" Width="387px"></asp:TextBox>
            </td>
            <td colspan="3" class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtFeedback" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td colspan="3" class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="right" class="style6">
                &nbsp;<asp:Button ID="CmdSubmit" runat="server" onclick="CmdSubmit_Click" 
                    Text="Submit" CssClass="cmdbutton" Height="32px" Width="80px" 
                    ValidationGroup="a" />
            </td>
            <td colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
