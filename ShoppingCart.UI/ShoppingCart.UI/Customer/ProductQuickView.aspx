<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/UserMainPage.Master" AutoEventWireup="true" CodeBehind="ProductQuickView.aspx.cs" Inherits="ShoppingCart.UI.Customer.ProductQuickView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
         <style>
        
        .modal{
            height: 100%;
            width: 100%;
          background-image: url('../Images/SiteImg/bg.png');
            position: absolute;
            top: 0px;
            left: 0px;
           
        }
        .close_bar{
            height: 30px;
            width: 100%;
           
        }
        .close_btn{
            height: 50px;
            width: 50px;
            float: right;
            color: #ffffff;
            margin-right:50px;
            text-align: center;
            line-height: 30px;
           
        }
        .img_container{
            width: 400px;
            height: 350px;
            margin-left: 200px;
            margin-top: 80px;
        }
        
    </style>
     <style type="text/css">
         .style1
        {
            width: 120%;
        }
        .style2
        {
            width: 268px;
        }
        .style3
        {
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
        }
        .style8
        {
            width: 103px;
            height: 23px;
        }
        .style9
        {
            width: 98px;
        }
        .style10
        {
            width: 98px;
            height: 23px;
        }
        .style11
        {
            width: 87px;
        }
        .style12
        {
            width: 42px;
        }
         .style13
         {}
         .style14
         {
             height: 21px;
         }
         .style15
         {
             height: 21px;
             width: 414px;
         }
         </style>
    <script src="../Css/jquery-1.10.2.js" type="text/javascript"></script>

     <script type="text/javascript">


//         function move() {
//             var a = document.getElementById("a").value;
//             var w = 300 + parseInt(a) + "px";
//             document.getElementById("img").style.width = w;
//         }


         $(document).ready(function () {
             $("img").click(function () {
                 var a = $(this).attr("src");
                 $("body").css("overflow", "hidden");
                 $("body").append("<div class='modal'></div> ");
                 $(".modal").append("<div class='close_bar'></div>");
                 $(".close_bar").append("<div class='close_btn'> <img alt='' src='../Images/SiteImg/Action-cancel.png' style='height: 39px; width: 39px' /></div>");
                 $(".modal").append("<div class='img_container'><img src='" + a + "' width='1000' height='700' id='img' /></div>");
                 $(".close_btn").click(function () {
                     $("body").css("overflow", "auto");
                     $(".modal").remove();
                 });



             });


         });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <br />
        <table class="style1">
            <tr>
                <td class="style12">
                    <asp:HiddenField ID="HiddenColourId" runat="server" />
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetAllImagesFromColorImg" 
                        TypeName="ShoppingCart.Controller.ColourController">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HiddenColourId" Name="colorid" 
                                PropertyName="Value" Type="Int32" />
                            <asp:ControlParameter ControlID="HiddenPath" Name="path" PropertyName="Value" 
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    <asp:HiddenField ID="HiddenPath" runat="server" />
                </td>
                <td>
                    <asp:HiddenField ID="HiddenFieldProductId" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11">
                <div class="datalist"> 
                    <asp:DataList ID="DataListSideImage" runat="server" 
                        DataSourceID="ObjectDataSource1" Height="465px" 
                        onitemcommand="DataListSideImage_ItemCommand">
                        <ItemTemplate>
                            <br />
                            <div class="datalistSub">
                              
                                
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    CommandArgument='<%# Eval("Image") %>' CommandName="ClickedImageView" 
                                    Height="69px" ImageUrl='<%# Eval("Image", "~/Images/ColorImage/{0}") %>' 
                                    Width="59px" />
                               
                              
                            </div>
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                </td>
                <td class="style2">
                    <img alt="" src="" runat="server" id="Image1" 
                        style=" height:254px; width:278px;" />
                   
                  <%--  <asp:Image ID="Image1" runat="server" Height="204px" Width="255px" />--%>
                </td>
                <td colspan="5">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" align="left" colspan="2">
                                <asp:Label ID="LbName" runat="server" Font-Bold="True" Font-Size="Large" 
                                    Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Price</td>
                            <td class="style8">
                                <asp:Label ID="Lbprice" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style6">
                                </td>
                            <td class="style6">
                                </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Description</td>
                            <td class="style7" colspan="2">
                                <asp:Label ID="LbDescription" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Add to Cart</asp:LinkButton>
                            </td>
                            <td class="style7">
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Add to Wishlist</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="cmdreview" runat="server" Text="Review" 
                                    onclick="cmdreview_Click" CssClass="cmdbutton" />
                            &nbsp;&nbsp;
                                <asp:Button ID="cmdsendtomail" runat="server" CssClass="cmdbutton" 
                                    onclick="cmdsendtomail_Click" Text="Send To Mail" Width="100px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table class="style1">
                        <tr>
                            <td class="style13" colspan="2">
                                <asp:TextBox ID="txtreviewCommant" runat="server" Height="104px" 
                                    TextMode="MultiLine" Width="428px" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style15">
                                <asp:Button ID="cmdreviewsave" runat="server" onclick="cmdreviewsave_Click" 
                                    Text="Save" Visible="False" CssClass="cmdbutton" />
                            </td>
                            <td class="style14">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtmail" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="cmdsend" runat="server" CssClass="cmdbutton" 
                                    onclick="cmdsend_Click" Text="Send" Visible="False" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
  


      <br />
   <asp:DataList ID="DataListColorImages" runat="server" DataKeyField="ColourId" 
        DataSourceID="SqlDataSource1"
        RepeatColumns="5" RepeatDirection="Horizontal" Height="16px" 
            onitemcommand="DataListColorImages_ItemCommand" Width="943px">
        <ItemTemplate>
   
           
            <asp:ImageButton ID="ImageButton1" runat="server" 
                CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                Height="105px" 
                ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                style="margin-right: 2px" Width="117px" />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductName, Product.Price, Colour.ProductId FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId WHERE (Colour.ProductId = @productid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenFieldProductId" Name="productid" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
      <br />
    <asp:DataList ID="DataList2" runat="server" 
        DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <table border="0" height="127" 
                style="color:#000;  margin-left:5px; margin-right:5px; margin-bottom:20px; background-color:#E9E9E9;width: 590px;">
                <tr>
                    <td height="39" width="45">
                        <asp:Image ID="Image2" runat="server" Height="32px" 
                            ImageUrl='<%# Eval("UserId", "~/Images/ProfilePic/{0}.jpg") %>' Width="32px" />
                    </td>
                    <td width="202">
                      
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                     
                    </td>
                    <td width="37">
                        &nbsp;</td>
                    <td width="106">
                        &nbsp;</td>
                    <td align="right" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 1px; background: #CCC">
                    </td>
                </tr>
                <tr>
                    <td 7""="" colspan="">
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td ID="communitypostId" runat="server" colspan="4" rowspan="2" valign="bottom">
                        <p>
                           
                            <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
                          
                        </p>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
         
<br />
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        
            SelectCommand="SELECT Review.ProductId, Product.ProductName, Product.ProductId AS Expr1, Review.Comments, RegisteredUser.Name, RegisteredUser.UserId FROM Review INNER JOIN RegisteredUser ON Review.UserId = RegisteredUser.UserId INNER JOIN Product ON Review.ProductId = Product.ProductId WHERE (Product.ProductId = @productId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenFieldProductId" Name="productId" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
 