<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="ShoppingCart.UI.Customer.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 93px;
        }
        .style3
        {
            width: 88px;
        }
        .style4
        {
            width: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder1">
    <div style="width:1000px;height:650px;">
   <div style="width:200px;height:509px; float:left; ">
    <%--   <table class="style1">
           <tr>
               <td>
                   <asp:Button ID="cmd500to1000" runat="server" onclick="cmd500to1000_Click" 
                       Text="500-1500" Width="137px" CommandName="500to1000" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmd1500to2500" runat="server" onclick="cmd1500to2500_Click" 
                       Text="1500-2500" Width="137px" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmd2500to3500" runat="server" Text="2500-3500" Width="138px" 
                       onclick="cmd2500to3500_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmd3500to4500" runat="server" Text="3500-4500" Width="138px" 
                       onclick="cmd3500to4500_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmd4500to5500" runat="server" Text="4500-5500" Width="139px" 
                       onclick="cmd4500to5500_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdBlack" runat="server" Text="Black" Width="139px" 
                       onclick="cmdBlack_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdBlue" runat="server" Text="Blue" Width="139px" 
                       onclick="cmdBlue_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdGreen" runat="server" Text="Green" Width="139px" 
                       onclick="cmdGreen_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="Orange" runat="server" Text="Orange" Width="139px" 
                       onclick="Orange_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdRed" runat="server" Text="Red" Width="139px" 
                       onclick="cmdRed_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdWhite" runat="server" Text="White" Width="139px" 
                       onclick="cmdWhite_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="cmdYellow" runat="server" Text="Yellow" Width="139px" 
                       onclick="cmdYellow_Click" />
               </td>
           </tr>
       </table>--%>
       <div style="height:auto;width:200px;float:left;">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="sort_prize_table">
  <tr>
    <td width="150" valign="top">
    	<br />
    	

        SORT BY PRIZE
        <br/><br/>
        <table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td>

        <asp:Button ID="cmd500to1000" runat="server" onclick="cmd500to1000_Click" 
        Text="$500 - $1500"   CssClass="priceButton" /></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td> 
        <asp:Button ID="cmd1500to2500" runat="server" onclick="cmd1500to2500_Click" Text="$1500 - $2500"  
            CssClass="priceButton" /></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td><asp:Button  Text="$2500 - $3500"  CssClass="priceButton" ID="cmd2500to3500" 
    runat="server"  onclick="cmd2500to3500_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td><asp:Button  Text="$3500 - $4500"  
            CssClass="priceButton" ID="cmd3500to4500" runat="server"
                       onclick="cmd3500to4500_Click"/> </td>
  </tr>
  <tr>
    <td><div class="prize_ico"></div></td>
    <td><asp:Button Text="Greater than $4500"  
            CssClass="priceButton"   ID="cmd4500to5500" runat="server"
                       onclick="cmd4500to5500_Click"/></td>
  </tr>
        </table>
<br />
    	SORT BY COLOR
        <br/><br/>
        <table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#d52828"></div></td>
    <td><asp:Button Text="RED"  CssClass="priceButton"  ID="cmdRed" runat="server" 
                       onclick="cmdRed_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#4fb54a"></div></td>
    <td><asp:Button Text="GREEN"  CssClass="priceButton" 
           ID="cmdGreen" runat="server" 
                       onclick="cmdGreen_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#546dc7"></div></td>
    <td><asp:Button  Text="BLUE"  CssClass="priceButton" 
             ID="cmdBlue" runat="server" 
                       onclick="cmdBlue_Click"/></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#e8c003"></div></td>
    <td><asp:Button  Text="YELLOW"  CssClass="priceButton" 
             ID="cmdYellow" runat="server" 
                       onclick="cmdYellow_Click" /></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#da7429"></div></td>
    <td><asp:Button Text="ORANGE"  CssClass="priceButton" 
            ID="Orange" runat="server" 
                       onclick="Orange_Click"/></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#000000"></div></td>
    <td><asp:Button Text="BLACK"  CssClass="priceButton" 
             ID="cmdBlack" runat="server"
                       onclick="cmdBlack_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="border:1px solid #565656; background-color:#FFFFFF; width:14px; height:14px;"></div></td>
    <td><asp:Button Text="WHITE"  CssClass="priceButton" 
            ID="cmdWhite" runat="server" 
                       onclick="cmdWhite_Click"/></td>
  </tr>
</table>
<br/>
</table>
</div>
       </div>

   <div style="width:750px;height:100px;float:left; ">
       &nbsp;<table class="style1">
           <tr>
               <td>
                   &nbsp;</td>
               <td class="style2">
                   <asp:DropDownList ID="ddlColour" runat="server" CssClass="dll">
                       <asp:ListItem>Black</asp:ListItem>
                       <asp:ListItem>Blue</asp:ListItem>
                       <asp:ListItem>Green</asp:ListItem>
                       <asp:ListItem>Orange</asp:ListItem>
                       <asp:ListItem>Red</asp:ListItem>
                       <asp:ListItem>White</asp:ListItem>
                       <asp:ListItem>Yellow</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td class="style3">
                   <asp:DropDownList ID="ddlPriceRange" runat="server" CssClass="dll">
                       <asp:ListItem>500-1500</asp:ListItem>
                       <asp:ListItem>1500-2500</asp:ListItem>
                       <asp:ListItem>2500-3500</asp:ListItem>
                       <asp:ListItem>3500-4500</asp:ListItem>
                       <asp:ListItem Value="4500-5500">4500-5500</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td class="style4">
                   &nbsp;</td>
               <td>
                   <asp:Button ID="cmdFind" runat="server" onclick="cmdFind_Click" Text="Find" 
                       CssClass="cmdbutton" />
               </td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
       <div class="mainBodyCenter">
       <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:DataList ID="datalistProductView" runat="server" DataKeyField="ColourId" 
                DataSourceID="SqlDataSource3" 
                onitemcommand="datalistProductView_ItemCommand" RepeatColumns="4">
                <ItemTemplate>
                    <br />
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                            Height="142px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            style="margin-right: 2px" Width="160px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                            Text="$"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <br />
                        <asp:Button ID="cmdCart" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="CartView" 
                            CssClass="cmdbutton" Text="Cart" />
&nbsp;
                        <asp:Button ID="cmdWishlist" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="WishlistView" 
                            CssClass="cmdbutton" Text="Wishlist" />
                        <br />
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price, Product.Colour FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId AND Colour.Colourname = Product.Colour">
            </asp:SqlDataSource>
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:DataList ID="dlPriceSearchedProducts" runat="server" CellSpacing="20" 
                DataSourceID="ObjectDataSource2" onitemcommand="dlPriceSearchedProducts_ItemCommand" 
                RepeatColumns="3">
                <ItemTemplate>
                    <br />
                    <br />
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton3" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="ProductView" 
                            Height="125px" 
                            ImageUrl='<%# Eval("MyColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            Width="148px" />
                        <br />
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                            Text="$"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <br />
                        <asp:Button ID="cmdCart" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="CartView" 
                            CssClass="cmdbutton" Text="Cart" />
                        &nbsp;
                        <asp:Button ID="cmdWishlist" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="WishlistView" 
                            CssClass="cmdbutton" Text="Wishlist" />
                        <br />
                        <asp:LinkButton ID="LinkButton3" runat="server" 
                            CommandArgument='<%# Eval("ProductId") %>' CommandName="CartView">Add to Cart</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="WishlistView">Add to Wishlist</asp:LinkButton>
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                SelectMethod="PriceSearch" 
                TypeName="ShoppingCart.Controller.ProductController" 
                OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="HiddenPrice1" Name="price1" 
                        PropertyName="Value" Type="Int32" />
                    <asp:ControlParameter ControlID="HiddenPrice2" Name="price2" 
                        PropertyName="Value" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:HiddenField ID="HiddenPrice1" runat="server" />
            <asp:HiddenField ID="HiddenPrice2" runat="server" 
                onvaluechanged="HiddenPrice2_ValueChanged" />
            <br />
            &nbsp;
        </asp:View>
        <asp:View ID="View3" runat="server">
            <%--<asp:DataList ID="dlColourSearchedProducts" runat="server" CellSpacing="20" 
                DataSourceID="ObjectDataSource3" onitemcommand="dlColourSearchedProducts_ItemCommand" 
                RepeatColumns="3">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="ProductView" 
                        Height="117px" 
                        ImageUrl='<%# Eval("ProductId", "~/Images/ProductImage/{0}.jpg") %>' 
                        Width="137px" CommandArgument='<%# Eval("ProductId") %>' />
                    <br />
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("ProductId") %>' CommandName="CartView">Add to Cart</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("ProductId") %>' CommandName="WishlistView">Add to Wishlist</asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:DataList>--%>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                SelectMethod="GetColourProduct" 
                TypeName="ShoppingCart.Controller.ProductController">
                <SelectParameters>
                    <asp:ControlParameter ControlID="HiddenColour" Name="colour" 
                        PropertyName="Value" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:HiddenField ID="HiddenColour" runat="server" />
            <br />
            <asp:DataList ID="datalistColorSearch" runat="server" CellSpacing="20" 
                DataKeyField="ColourId" DataSourceID="SqlDataSource1" 
                onitemcommand="datalistColorSearch_ItemCommand" RepeatColumns="3">
                <ItemTemplate>
                    <br />
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            CommandArgument='<%# Eval("ColourId", "{0}") %>' CommandName="ProductView" 
                            Height="126px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            Width="160px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                            Text="$"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text=" Color : "></asp:Label>
                        <asp:Label ID="ColournameLabel" runat="server" 
                            Text='<%# Eval("Colourname") %>' />
                        <br />
                        <br />
                        <asp:Button ID="cmdCart" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="CartView" 
                            CssClass="cmdbutton" Text="Cart" />
                        &nbsp;
                        <asp:Button ID="cmdWishlist" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="WishlistView" 
                            CssClass="cmdbutton" Text="Wishlist" />
                        <br />
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString2 %>" 
                SelectCommand="SELECT Colour.ColourId, Product.ProductId, Product.ProductName, Product.Price, Colour.Colourname FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId WHERE (Colour.Colourname = @color)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="HiddenColour" Name="color" 
                        PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </asp:View>
           <asp:View ID="View4" runat="server">
               <%--<asp:DataList ID="dlColourPriceSearchedProducts" runat="server" 
                   CellSpacing="20" DataSourceID="ObjectDataSource4" 
                   onitemcommand="dlColourPriceSearchedProducts_ItemCommand1" RepeatColumns="3">
                   <ItemTemplate>
                       <asp:ImageButton ID="ImageButton4" runat="server" 
                           CommandArgument='<%# Eval("ProductId") %>' CommandName="ProductView" 
                           Height="124px" 
                           ImageUrl='<%# Eval("ProductId", "~/Images/ProductImage/{0}.jpg") %>' 
                           Width="137px" />
                       <br />
                       &nbsp;<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                       <br />
                       Price:
                       <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                       <br />
                       <asp:LinkButton ID="LinkButton1" runat="server" 
                           CommandArgument='<%# Eval("ProductId") %>' CommandName="CartView">Add to Cart</asp:LinkButton>
                       &nbsp;
                       <asp:LinkButton ID="LinkButton2" runat="server" 
                           CommandArgument='<%# Eval("ProductId") %>' CommandName="WishlistView">Add to Wishlist</asp:LinkButton>
                       <br />
                       <br />
                       <br />
                   </ItemTemplate>
               </asp:DataList>--%>
               <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                   SelectMethod="GetProductPriceColour" 
                   TypeName="ShoppingCart.Controller.ProductController">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="HiddenColourPrice" Name="colour" 
                           PropertyName="Value" Type="String" />
                       <asp:ControlParameter ControlID="HiddenPrice11" Name="price1" 
                           PropertyName="Value" Type="Int32" />
                       <asp:ControlParameter ControlID="HiddenPrice22" Name="price2" 
                           PropertyName="Value" Type="Int32" />
                   </SelectParameters>
               </asp:ObjectDataSource>
               <asp:HiddenField ID="HiddenColourPrice" runat="server" />
               <asp:HiddenField ID="HiddenPrice11" runat="server" />
               <asp:HiddenField ID="HiddenPrice22" runat="server" />
               <asp:DataList 
                   ID="dlColorPriceSearch" runat="server" CellSpacing="20" DataKeyField="ColourId" 
                   DataSourceID="SqlDataSource2" onitemcommand="dlColorPriceSearch_ItemCommand" 
                   RepeatColumns="3" Width="646px">
                   <ItemTemplate>
                       <br />
                       <div class="product_container">
                           <asp:ImageButton ID="ImageButton5" runat="server" 
                               CommandArgument='<%# Eval("ColourId") %>' Height="111px" 
                               ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                               Width="149px" />
                           <br />
                           <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                               Text='<%# Eval("ProductName") %>' />
                           <br />
                           <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                               Text="$"></asp:Label>
                           &nbsp;
                           <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                           <br />
                           <asp:Label ID="Label2" runat="server" CssClass="lbl" Text=" Color : "></asp:Label>
                           <asp:Label ID="ColournameLabel" runat="server" 
                               Text='<%# Eval("Colourname") %>' />
                           <br />
                           <br />
                           <asp:Button ID="cmdCart" runat="server" 
                               CommandArgument='<%# Eval("ProductId") %>' CommandName="CartView" 
                               CssClass="cmdbutton" Text="Cart" />
                           &nbsp;
                           <asp:Button ID="cmdWishlist" runat="server" 
                               CommandArgument='<%# Eval("ColourId") %>' CommandName="WishlistView" 
                               CssClass="cmdbutton" Text="Wishlist" />
                           <br />
                       </div>
                       <br />
                   </ItemTemplate>
               </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString2 %>" 
                   
                   SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId WHERE (Product.Price &gt;= @price1) AND (Product.Price &lt;= @price2) AND (Colour.Colourname = @color)">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="HiddenPrice11" Name="price1" 
                           PropertyName="Value" />
                       <asp:ControlParameter ControlID="HiddenPrice22" Name="price2" 
                           PropertyName="Value" />
                       <asp:ControlParameter ControlID="HiddenColourPrice" Name="color" 
                           PropertyName="Value" />
                   </SelectParameters>
               </asp:SqlDataSource>
               <br />
           </asp:View>
    </asp:MultiView>
    </div>
   </div>
   </div>



</asp:Content>

