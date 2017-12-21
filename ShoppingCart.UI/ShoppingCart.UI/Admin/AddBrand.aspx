<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="ShoppingCart.UI.Admin.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 320px;
        }
        .style3
        {
            height: 34px;
        }
        .style8
        {
            height: 34px;
            width: 14px;
        }
        .style11
        {
        }
        .style12
        {
            height: 44px;
            }
        .style15
        {
            height: 44px;
            width: 14px;
        }
        .style20
        {
            height: 44px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3" align="center" colspan="3">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="ADD BRAND"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <asp:Label ID="lblbrandname" runat="server" Text="BrandName :"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <asp:TextBox ID="txtbrand" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtbrand" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <asp:Label ID="lblbrandname0" runat="server" Text="Logo :"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" 
                    CssClass="txt" />
            </td>
        </tr>
        <tr>
            <td class="style20">
                </td>
            <td class="style15">
                </td>
            <td class="style12">
                <asp:Button ID="cmdAdd" runat="server" onclick="cmdAdd_Click" Text="Add" 
                    Width="124px" CssClass="cmdbutton" ValidationGroup="a" />
            </td>
        </tr>
      
   
    </table>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand1"
                    style="margin-top: 63px" Width="257px" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        ForeColor="White" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="BrandName" HeaderText="BrandName" 
                            SortExpression="BrandName" />
                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="59px" 
                                    ImageUrl='<%# Eval("BrandId", "~/Images/BrandLogos/{0}.jpg") %>' 
                                    Width="69px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("BrandId") %>' CommandName="EditView" 
                                    Font-Strikeout="False" Font-Underline="True">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle Font-Bold="False" ForeColor="White" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    DataObjectTypeName="ShoppingCart.Model.Brand" SelectMethod="GetallData" 
                    TypeName="ShoppingCart.Controller.BrandController" UpdateMethod="Update">
                </asp:ObjectDataSource>
</asp:Content>
