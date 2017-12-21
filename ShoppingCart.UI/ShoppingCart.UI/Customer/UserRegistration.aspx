<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="ShoppingCart.UI.Customer.UserRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/MyCss.css" rel="stylesheet" type="text/css" />
   
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
   
</head>
<body style="height: 464px">
    <form id="form1" runat="server">
  <div style="margin-left:150px;margin-top:150px;">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="4">
                    <asp:Label ID="Label15" runat="server" style="font-weight: 700" Text="Sign Up"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="First Name"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label4" runat="server" Text="E-mail"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="#CC0000" 
                                    ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label1" runat="server" Text="State"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="4">
                    <asp:TextBox ID="txtAddress" runat="server" Height="89px" TextMode="MultiLine" 
                        Width="267px"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:TextBox ID="txtState" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtState" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label2" runat="server" Text="District"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                   <asp:TextBox ID="txtDistrict" runat="server" CssClass="txt"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                       ControlToValidate="txtDistrict" ErrorMessage="*" ForeColor="#CC0000" 
                       ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="Label6" runat="server" Text="Pin Code"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label14" runat="server" Text="UserName"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:TextBox ID="txtPinCode" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPinCode" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPinCode" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationExpression="^[0-9]{6}$" ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
            <td>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="#CC0000" 
                                    ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="Label3" runat="server" Text="Locality"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:TextBox ID="txtLocality" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtLocality" ErrorMessage="*" ForeColor="#CC0000" 
                                    ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="blpwd" runat="server" ForeColor="#CC0000" 
                    Text="Invalid Password" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="Label5" runat="server" Text="Phon no"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                                <asp:Label ID="Label13" runat="server" Text="Confirm Password"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:TextBox ID="txtPhonNo" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPhonNo" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtPhonNo" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationExpression="^[0-9]{10}$" ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
            <td>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" style="margin-left: 0px" 
                                    TextMode="Password" CssClass="txt"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
            <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
            <td>
                                <asp:Button ID="CmdSignIn" runat="server" Height="26px" 
                                    onclick="CmdSignIn_Click" Text="Sign In" Width="82px" 
                                    CssClass="cmdbutton" ValidationGroup="a" />
                            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
