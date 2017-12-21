<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="DISCOUNT.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.DISCOUNT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 200px;
            
            margin-top:30px;
          
        }
        .style2
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server" DataKeyField="DiscountId" 
        DataSourceID="SqlDataSource1" RepeatColumns="2">
        <ItemTemplate>
            <br />
            <div class="offer">
            <center>
                <table class="style1" >
                    <tr>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="ValidityFromLabel" runat="server" 
                                Text='<%# Eval("ValidityFrom") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="ValidityToLabel" runat="server" 
                                Text='<%# Eval("ValidityTo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="DiscountPercentageLabel" runat="server" 
                                Text='<%# Eval("DiscountPercentage") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                    </tr>
                </table>
                </center>
            </div>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT * FROM [Discount]"></asp:SqlDataSource>

</asp:Content>
