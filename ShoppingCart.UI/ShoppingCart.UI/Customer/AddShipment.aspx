<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="AddShipment.aspx.cs" Inherits="ShoppingCart.UI.Customer.AddShipment" %>
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
        .style3
        {
            width: 161px;
        }
        .style4
        {
            height: 21px;
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="255px" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        AutoPostBack="True">
                    <asp:ListItem>Default Address</asp:ListItem>
                    <asp:ListItem>New Address</asp:ListItem>
                </asp:RadioButtonList>

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label runat="server" Text="Add  shipment" ID="lblname"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                
            </td>
        </tr>

        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbName" runat="server" Text="Name : "></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbAddress" runat="server" Text="Address :"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td rowspan="3">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="73px" 
                    Width="266px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbPlace" runat="server" Text="Place:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtPlace" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtPlace" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbDistrict" runat="server" Text="District:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtDistrict" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TxtDistrict" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbState" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtState" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TxtState" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                <asp:Label ID="lbPincode" runat="server" Text="Pincode"></asp:Label>
                :</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TxtPincode" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtPincode" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]{6}$" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lbMobile" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtMobile" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtMobile" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[0-9]{10}$" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                RepeatDirection="Horizontal" Width="260px">
                                <asp:ListItem>Cash on Delivery</asp:ListItem>
                                <asp:ListItem>NetBanking</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdAdd" runat="server" onclick="cmdAdd_Click" Text="Add" 
                    CssClass="cmdbutton" ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </asp:View>
        </asp:MultiView>
</asp:Content>
