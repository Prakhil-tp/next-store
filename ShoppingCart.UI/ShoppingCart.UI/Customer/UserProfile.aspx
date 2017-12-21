<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ShoppingCart.UI.Customer.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
        }
        .style3
        {
            width: 75px;
        }
        .style8
        {
            width: 569px;
        }
        .style13
        {
            width: 9px;
        }
        .style14
        {
            width: 48px;
        }
        .style15
        {
            width: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                <asp:Image ID="ImgProfilePic" runat="server" Height="141px" onload="Page_Load" 
                    Width="164px" />
            </td>
            <td class="style8">
                <table class="style1">
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
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="LbName" runat="server" Font-Bold="True" Font-Size="Larger" 
                                Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style8" align="right">
                <span class="arrow">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="33px" 
                    onclick="ImageButton3_Click" Width="45px" 
                    ImageUrl="~/Images/SiteImg/edit.png" />
            </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="4" rowspan="5">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataSourceID="ObjectDataSource1" Height="241px" Width="909px">
                    <Fields>
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                            SortExpression="Pincode" />
                        <asp:BoundField DataField="PhNo" HeaderText="PhNo" SortExpression="PhNo" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="District" HeaderText="District" 
                            SortExpression="District" />
                        <asp:BoundField DataField="Locality" HeaderText="Locality" 
                            SortExpression="Locality" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="search" 
                    TypeName="ShoppingCart.Controller.RegisteredUserController">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="UserId" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="style2" rowspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
