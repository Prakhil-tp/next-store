<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="ShoppingCart.UI.Admin.UserView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 290px;
        }
        .style2
        {
            width: 289px;
        }
        .style3
        {
            width: 285px;
        }
        .style5
        {
            width: 199px;
        }
        .style6
        {
            width: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
         
         
          <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
        RepeatColumns="4" Width="713px" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:ImageButton ID="ImgButtonUserPic" runat="server" 
                CommandArgument='<%# Eval("UserId") %>' Height="133px" 
                ImageUrl='<%# Eval("UserId", "~/Images/ProfilePic/{0}.jpg") %>' 
                Width="154px" CommandName="ProfileView" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
     
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetallData" 
                TypeName="ShoppingCart.Controller.RegisteredUserController">
            </asp:ObjectDataSource>
            <p>
                &nbsp;</p>
     
        </asp:View>
        <asp:View ID="View2" runat="server">
            <span class="arrow">
            <table class="style1">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style13">
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
                        <asp:Image ID="ImgProfilePic" runat="server" Height="130px" onload="Page_Load" 
                            Width="143px" />
                    </td>
                    <td class="style6">
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
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2" colspan="4" rowspan="20">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            DataSourceID="ObjectDataSource2" Height="291px" Width="374px" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onitemcommand="DetailsView1_ItemCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
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
                            <FooterStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                            <FooterTemplate>
                             
                                <asp:Button ID="cmdBLock" runat="server" CssClass="cmdbutton" Text="Block" 
                                    CommandArgument='<%# Eval("UserId") %>' CommandName="blockView" />
                              
                            </FooterTemplate>
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="search" 
                            TypeName="ShoppingCart.Controller.RegisteredUserController">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="HiddenFieldUserId" Name="userid" 
                                    PropertyName="Value" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                       
                        <asp:HiddenField ID="HiddenFieldUserId" runat="server" />
                      
                    </td>
                    <td class="style2" rowspan="20">
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
            </span>
        </asp:View>
    </asp:MultiView>
    <p>
        &nbsp;</p>
</asp:Content>
