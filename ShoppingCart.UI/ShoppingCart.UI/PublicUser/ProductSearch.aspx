<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="ProductSearch.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.ProductSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">


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
        <asp:Button ID="cmd500to1500" runat="server" Text="$500 - $1500"  
            CssClass="priceButton" onclick="cmd500to1500_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td> 
        <asp:Button ID="cmd1500to2500" runat="server" Text="$1500 - $2500"  
            CssClass="priceButton" onclick="cmd1500to2500_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td><asp:Button ID="cmd2500to3500" runat="server" Text="$2500 - $3500"  
            CssClass="priceButton" onclick="cmd2500to3500_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico"></div></td>
    <td><asp:Button ID="cmd3500to4500" runat="server" Text="$3500 - $4500"  
            CssClass="priceButton" onclick="cmd3500to4500_Click"/> </td>
  </tr>
  <tr>
    <td><div class="prize_ico"></div></td>
    <td><asp:Button ID="cmd4500to5500" runat="server" Text="Greater than $4500"  
            CssClass="priceButton" onclick="cmd4500to5500_Click"/></td>
  </tr>
        </table>
<br />
    	SORT BY COLOR
        <br/><br/>
        <table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#d52828"></div></td>
    <td><asp:Button ID="cmdred" runat="server" Text="RED"  CssClass="priceButton" 
            onclick="cmdred_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#4fb54a"></div></td>
    <td><asp:Button ID="cmdgreen" runat="server" Text="GREEN"  CssClass="priceButton" 
            onclick="cmdgreen_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="background-color:#546dc7"></div></td>
    <td><asp:Button ID="cmdblue" runat="server" Text="BLUE"  CssClass="priceButton" 
            onclick="cmdblue_Click"/></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#e8c003"></div></td>
    <td><asp:Button ID="cmdyellow" runat="server" Text="YELLOW"  CssClass="priceButton" 
            onclick="cmdyellow_Click"/></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#da7429"></div></td>
    <td><asp:Button ID="cmdorange" runat="server" Text="ORANGE"  CssClass="priceButton" 
            onclick="cmdorange_Click"/></td>
  </tr>
  <tr>
    <td><div class="prize_ico" style="background-color:#000000"></div></td>
    <td><asp:Button ID="cmdblack" runat="server" Text="BLACK"  CssClass="priceButton" 
            onclick="cmdblack_Click"/></td>
  </tr>
  <tr>
    <td width="30"><div class="prize_ico" style="border:1px solid #565656; background-color:#FFFFFF; width:14px; height:14px;"></div></td>
    <td><asp:Button ID="cmdwhite" runat="server" Text="WHITE"  CssClass="priceButton" 
            onclick="cmdwhite_Click"/></td>
  </tr>
</table>
<br/>
</table>
</div>





<div class="ourProducts">
<br/>
    	LATEST PRODUCTS
    	<br/>
        <p>Check out the Windows website, which has more information, downloads, and ideas for getting the most out of your Windows 7 PC</p>
    	<table class="style1">
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
                       CssClass="cmdbutton" Height="30px" Width="100px" />
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
    	<br/>
        
           <asp:MultiView ID="MultiView1" runat="server">
      
        <asp:View ID="View2" runat="server">
            <asp:DataList ID="dlPriceSearchedProducts" runat="server" CellSpacing="20" 
                DataSourceID="ObjectDataSource2" onitemcommand="dlPriceSearchedProducts_ItemCommand" 
                RepeatColumns="3">
                <ItemTemplate>
                    &nbsp;
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton3" runat="server" 
                            CommandArgument='<%# Eval("MyColorId") %>' CommandName="ProductView" 
                            Height="192px" 
                            ImageUrl='<%# Eval("MyColorId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            Width="166px" />
                        <br />
                        <asp:Label ID="NameLabel" runat="server" CssClass="lbl" 
                            Text='<%# Eval("Name") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="lblprice" Text="$"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" CssClass="lblprice" 
                            Text='<%# Eval("Price") %>' />
                        <br />
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
            <asp:HiddenField ID="HiddenPrice2" runat="server"  />
            <br />
            &nbsp;
        </asp:View>
        <asp:View ID="View3" runat="server">
       
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                SelectMethod="GetColourProduct" 
                TypeName="ShoppingCart.Controller.ProductController">
                <SelectParameters>
                    <asp:ControlParameter ControlID="HiddenColour" Name="colour" 
                        PropertyName="Value" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:HiddenField ID="HiddenColour" runat="server" />
            <asp:DataList ID="datalistColorSearch" runat="server" CellSpacing="20" 
                DataKeyField="ColourId" DataSourceID="SqlDataSource1" 
                onitemcommand="datalistColorSearch_ItemCommand" RepeatColumns="3">
                <ItemTemplate>
                    <br />
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            CommandArgument='<%# Eval("ColourId", "{0}") %>' CommandName="ProductView" 
                            Height="183px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            Width="171px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                            Text='<%# Eval("ProductName") %>' />
                        <br />
                        <asp:Label ID="Label3" runat="server" CssClass="lblprice" Text="$"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" ForeColor="#990033" 
                            Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="Color : "></asp:Label>
                        <asp:Label ID="ColournameLabel" runat="server" 
                            Text='<%# Eval("Colourname") %>' />
                    </div>
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
               &nbsp;<asp:DataList 
                   ID="dlColorPriceSearch" runat="server" CellSpacing="20" DataKeyField="ColourId" 
                   DataSourceID="SqlDataSource2" onitemcommand="dlColorPriceSearch_ItemCommand" 
                   RepeatColumns="3" Width="646px">
                   <ItemTemplate>
                       <br />
                       <div class="product_container">
                           <asp:ImageButton ID="ImageButton5" runat="server" 
                               CommandArgument='<%# Eval("ColourId") %>' Height="182px" 
                               ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                               Width="167px" />
                           <br />
                           <asp:Label ID="ProductNameLabel" runat="server" CssClass="lbl" 
                               Text='<%# Eval("ProductName") %>' />
                           <br />
                           <asp:Label ID="Label3" runat="server" CssClass="lblprice" Text="$"></asp:Label>
                           <asp:Label ID="PriceLabel" runat="server" ForeColor="#990033" 
                               Text='<%# Eval("Price") %>' />
                           <br />
                           <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="Color : "></asp:Label>
                           <asp:Label ID="ColournameLabel" runat="server" 
                               Text='<%# Eval("Colourname") %>' />
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
               <asp:View ID="View1" runat="server">
                 <asp:DataList ID="datalistProductView" runat="server" DataKeyField="ColourId" 
                DataSourceID="SqlDataSource3"  RepeatColumns="4" 
                       onitemcommand="datalistProductView_ItemCommand">
                <ItemTemplate>
                    <br />
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                            Height="209px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            style="margin-right: 2px" Width="167px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="lblprice" ForeColor="#990033" 
                            Text="$"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <br />
&nbsp;
                        <br />
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price, Product.Colour FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId AND Colour.Colourname = Product.Colour">
            </asp:SqlDataSource>
               </asp:View>
    </asp:MultiView>
         
</div>



</div>
</asp:Content>
