<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="ShoppingCart.UI.Customer.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        height:600px;
    }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="style1">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:Label ID="Label3" runat="server" Text="Edit Profile"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="False"></asp:Label>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtName" runat="server" Width="241px" CssClass="txt" 
                Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TxtName" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            <asp:Label ID="Label2" runat="server" Text="Address" Font-Bold="False"></asp:Label>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtAddress" runat="server" Height="60px" TextMode="MultiLine" 
                Width="243px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TxtAddress" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            Pin code</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtPincode" runat="server" Width="241px" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TxtPincode" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="^[0-9]{6}$" ValidationGroup="a"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            Ph no</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtPhno" runat="server" Width="241px" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TxtPhno" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="^[0-9]{10}$" ValidationGroup="a"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            Email</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="a"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            State</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtState" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TxtState" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            District</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtDistrict" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TxtDistrict" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="right">
            Locality</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:TextBox ID="TxtLocality" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TxtLocality" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
                        <asp:Button ID="cmdUpdate" runat="server" onclick="cmdUpdate_Click" 
                          Text="Update" CssClass="cmdbutton" ValidationGroup="a" />
                    </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
  
</table>

</asp:Content>
