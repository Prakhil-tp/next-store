<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="ViewCheckOut.aspx.cs" Inherits="ShoppingCart.UI.Customer.ViewCheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 204px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 90px;
        }
        .style5
        {
            width: 101px;
        }
        .style6
        {
            width: 98px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

      




    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
          <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CartId,ProductId" DataSourceID="SqlDataSource1" 
                onrowcommand="GridView1_RowCommand" Width="456px" Height="238px">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                        SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Total" HeaderText="Total" 
                        SortExpression="Total" ReadOnly="True" />
                    <asp:BoundField DataField="CartId" HeaderText="CartId" ReadOnly="True" 
                        SortExpression="CartId" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                        InsertVisible="False" ReadOnly="True" SortExpression="ProductId" 
                        Visible="False" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" 
                        Visible="False" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button19" runat="server" 
                                CommandArgument='<%# Eval("CartId") %>' CommandName="EditView" 
                                Text="Size &amp; Quantity" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>



          <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" 
                onrowcommand="GridView1_RowCommand" Width="456px" Height="238px" 
                onrowdatabound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="CartId" HeaderText="CartId" 
                        SortExpression="CartId" />
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                        SortExpression="ProductId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" 
                        SortExpression="Price" />
                    <asp:BoundField DataField="Size" HeaderText="Size" 
                        SortExpression="Size" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="ColorId" HeaderText="ColorId" 
                        SortExpression="ColorId" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
            </asp:GridView>--%>



            <%--<asp:Button ID="cmdok" runat="server" CssClass="cmdbutton" 
                onclick="cmdok_Click" Text="Ok" />--%>



            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetAllData" 
                TypeName="ShoppingCart.Controller.CheckOutControl" 
                OldValuesParameterFormatString="original_{0}" UpdateMethod="GetAllData">
                <SelectParameters>
                    <asp:SessionParameter Name="userid" SessionField="UserId" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userid" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>


        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                
                SelectCommand="SELECT Cart.CartId, Cart.Quantity, Product.ProductName, Product.ProductId, Product.Price, Cart.UserId, Product.Price * Cart.Quantity AS Total, Cart.Size FROM Cart INNER JOIN Product ON Cart.ProductId = Product.ProductId WHERE (Cart.UserId = @UserId)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserId" SessionField="UserId" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HiddenField ID="hiddenfileldcartid" runat="server" />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                DataSourceID="ObjectDataSource1" onitemcommand="FormView1_ItemCommand" 
                Width="209px" CellPadding="4" ForeColor="#333333">
                <EditItemTemplate>
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" AutoPostBack="True" 
                        ontextchanged="QuantityTextBox_TextChanged" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Total:
                    <asp:Label ID="lbltotal" runat="server"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="ProductSize" 
                        DataValueField="SizeId" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString2 %>" 
                        SelectCommand="SELECT * FROM [Size] WHERE ([ProductId] = @ProductId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HiddenField2" Name="ProductId" 
                                PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" 
                        CommandName="UpdateItem" Text="Update" 
                        CommandArgument='<%# Eval("CartId") %>' Font-Bold="True" 
                        Font-Strikeout="False" Font-Underline="False" ForeColor="#FF5050" />
&nbsp;
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    ProductId:
                    <asp:TextBox ID="ProductIdTextBox" runat="server" 
                        Text='<%# Bind("ProductId") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Size:
                    <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" 
                        Text='<%# Bind("Quantity") %>' />
                    <br />
                    ColorId:
                    <asp:TextBox ID="ColorIdTextBox" runat="server" Text='<%# Bind("ColorId") %>' />
                    <br />
                    Total:
                    <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProductId:
                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Bind("ProductId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Size:
                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    ColorId:
                    <asp:Label ID="ColorIdLabel" runat="server" Text='<%# Bind("ColorId") %>' />
                    <br />
                    Total:
                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
                    <br />
                    <asp:HiddenField ID="HiddenField3" runat="server" 
                        Value='<%# Eval("CartId") %>' />
                    <br />
                  
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("ProductId") %>' CommandName="Edit" 
                        Font-Bold="True" Font-Underline="True" ForeColor="#FF6600">Edit</asp:LinkButton>
                  <br />
                    <br />
                </ItemTemplate>
                <PagerStyle BackColor="Silver" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <br />
            <asp:HiddenField ID="HiddenField2" runat="server" />
          
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" 
                Text="Total : "></asp:Label>
            <asp:Label ID="lbltotal" runat="server"></asp:Label>
            <br />
            <span class="arrow">
            <asp:Button ID="cmdnext" runat="server" CssClass="cmdbutton" 
                onclick="cmdnext_Click" Text="Next" />
            </span>
            <br />
            
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Quantity : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtquantity" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtquantity" ErrorMessage="*" ForeColor="Red" 
                            ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Size : "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlsze" runat="server" CssClass="dll" Height="30px">
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="cmdupdatesize" runat="server" onclick="cmdupdatesize_Click" 
                            Text="Save" CssClass="cmdbutton" ValidationGroup="a" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">

            <br />
            <table class="style2">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        <span class="arrow">
                        <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
                        </span>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbl_total" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="Label5" runat="server" Text="Delivery Charge"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbl_deliveryCharge" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="Label6" runat="server" Text="Discount"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbl_Discount" runat="server" Text="Label"></asp:Label>
                        &nbsp;<asp:Label ID="Label8" runat="server" Text="%"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="Label7" runat="server" Text="Grand total"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbl_GrandTotal" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        <asp:Button ID="Button19" runat="server" CssClass="cmdbutton" 
                            onclick="Button19_Click" Text="Next" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />

        </asp:View>
    </asp:MultiView>

      




</asp:Content>
