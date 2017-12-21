<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="ShoppingCart.UI.Admin.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 55%;
        }
        .style8
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <table class="style7">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Category "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtcategory" runat="server" CssClass="txt" placeholder="Category"></asp:TextBox>
            &nbsp;
                <asp:Button ID="CmdaDD" runat="server" CssClass="cmdbutton" 
                    onclick="CmdaDD_Click" Text="Add" ValidationGroup="a" />
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcategory" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    &nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetallData" TypeName="ShoppingCart.Controller.CategoryController">
                </asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ObjectDataSource1" 
        onrowcommand="GridView1_RowCommand" Height="168px" Width="210px">
                    <Columns>
                        <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                            SortExpression="CategoryId" Visible="False" />
                        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                            SortExpression="CategoryName" />
                    </Columns>
                </asp:GridView>
                </asp:Content>
