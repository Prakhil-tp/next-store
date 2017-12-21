<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="OrdersView.aspx.cs" Inherits="ShoppingCart.UI.Admin.OrdersView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
    {
        width: 100%;
    }
    .style9
    {
        width: 91px;
    }
    .style11
    {
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
                CommandArgument='<%# Eval("UserId") %>' CommandName="ProfileView" 
                Height="133px" ImageUrl='<%# Eval("UserId", "~/Images/ProfilePic/{0}.jpg") %>' 
                Width="154px" />
            <br />
            <br />
            &nbsp;<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
     
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetallData" 
                TypeName="ShoppingCart.Controller.RegisteredUserController" 
                OldValuesParameterFormatString="original_{0}">
            </asp:ObjectDataSource>
            <p>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </p>
     
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server">
            </asp:ObjectDataSource>
     
        </asp:View>
        <asp:View ID="View2" runat="server">
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" Height="144px" 
                onrowcommand="GridView1_RowCommand" Width="535px">
                                <Columns>
                                    <asp:BoundField DataField="ProductName" HeaderText="Product" 
                                        SortExpression="ProductName" />
                                    <asp:BoundField DataField="Colourname" HeaderText="Colour" 
                                        SortExpression="Colourname" />
                                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                        SortExpression="Quantity" />
                                    <asp:BoundField DataField="ColourId" HeaderText="ColourId" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="ColourId" 
                                        Visible="False" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" 
                                        Visible="False" />
                                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="UserId" Visible="False" />
                                    <asp:BoundField DataField="ProductOrderId" HeaderText="ProductOrderId" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="ProductOrderId" 
                                        Visible="False" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button19" runat="server" 
                                                CommandArgument='<%# Eval("ProductOrderId") %>' CommandName="EditDelivary" 
                                                Text="Delivary" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label1" runat="server" Text="No item found"></asp:Label>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                                SelectCommand="SELECT ProductOrder.Size, ProductOrder.Quantity, Colour.Colourname, Colour.ColourId, Product.ProductName, ProductOrder.Status, RegisteredUser.UserId, ProductOrder.ProductOrderId FROM Colour INNER JOIN ProductOrder ON Colour.ColourId = ProductOrder.ColorId INNER JOIN RegisteredUser INNER JOIN [Order] ON RegisteredUser.UserId = [Order].UserId ON ProductOrder.OrderId = [Order].OrderId INNER JOIN Product ON Colour.ProductId = Product.ProductId WHERE (ProductOrder.Status = N'false') AND (RegisteredUser.UserId = @userid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="HiddenField1" Name="userid" 
                                        PropertyName="Value" />
                                </SelectParameters>
                            </asp:SqlDataSource>
        </asp:View>
    </asp:MultiView>
</asp:Content>
