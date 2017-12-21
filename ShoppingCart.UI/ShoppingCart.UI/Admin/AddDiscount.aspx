<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AddDiscount.aspx.cs" Inherits="ShoppingCart.UI.Admin.AddDiscount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {}
        .style3
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View2" runat="server">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                   
                    <asp:Label ID="Label1" runat="server" Text="Add Discount"></asp:Label>
                   
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
                    <asp:Label ID="Label2" runat="server" Text="Name of the Discount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style2" rowspan="7" ID="Discount">
                    <asp:Label ID="Label5" runat="server" Text="Validity From :"></asp:Label>
                    <asp:Calendar ID="Calendar1from" runat="server"></asp:Calendar>
                    <asp:Label ID="Label6" runat="server" Text="Validity To :"></asp:Label>
                    <asp:Calendar ID="Calendar2to" runat="server"></asp:Calendar>
                    &nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" ID="Discount">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" ID="Discount">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" ID="Discount">
                    &nbsp;</td>
            </tr>
            <tr>
                <td ID="Discount" class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Discount"></asp:Label>
                </td>
                <td ID="Discount" class="style3">
                    <asp:TextBox ID="txtdiscount" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtdiscount" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td ID="Discount" class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                </td>
                <td ID="Discount" class="style3">
                    <asp:TextBox ID="TxtPrice" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TxtPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="cmdsubmit" runat="server" CssClass="cmdbutton" 
                        onclick="cmdsubmit_Click" Text="Submit" ValidationGroup="a" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        </asp:View>
        <asp:View ID="View1" runat="server">
        <br />  
            <asp:Button ID="cmdadd" runat="server" CssClass="cmdbutton" 
                onclick="cmdadd_Click" Text="Add Discount" Width="110px" />
            <br />  
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="DiscountId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="DiscountId" HeaderText="DiscountId" 
                        InsertVisible="False" ReadOnly="True" SortExpression="DiscountId" 
                        Visible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="ValidityFrom" HeaderText="ValidityFrom" 
                        SortExpression="ValidityFrom" />
                    <asp:BoundField DataField="DiscountPercentage" HeaderText="DiscountPercentage" 
                        SortExpression="DiscountPercentage" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="ValidityTo" HeaderText="ValidityTo" 
                        SortExpression="ValidityTo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                SelectCommand="SELECT * FROM [Discount]"></asp:SqlDataSource>
            <br />
        </asp:View>
    </asp:MultiView>
</asp:Content>
