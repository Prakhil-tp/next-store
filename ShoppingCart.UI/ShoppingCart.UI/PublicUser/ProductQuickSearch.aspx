<%@ Page Title="" Language="C#" MasterPageFile="~/PublicUser/PublicMaster.Master" AutoEventWireup="true" CodeBehind="ProductQuickSearch.aspx.cs" Inherits="ShoppingCart.UI.PublicUser.ProductQuickSearch" %>
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
            width: 100%;
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
         }
        .style12
        {
            width: 42px;
        }
         .style13
         {
             width: 359px;
         }
         .style14
         {
             width: 158px;
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

<table class="style1">
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    <asp:HiddenField ID="HiddenColourId" runat="server" />
                </td>
                <td class="style13">
                    <asp:HiddenField ID="HiddenPath" runat="server" />
                </td>
                <td>
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
                    &nbsp;</td>
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
                <td >
                <div class="datalist"> 
                    <asp:DataList ID="DataListSideImage" runat="server" 
                        DataSourceID="ObjectDataSource1" Height="438px" 
                        onitemcommand="DataListSideImage_ItemCommand">
                        <ItemTemplate>
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
                <td class="style13">
                    <img alt="" src="" runat="server" id="Image1" 
                        style=" height:204px;width:237px;" />
                   
                  <%--  <asp:Image ID="Image1" runat="server" Height="204px" Width="255px" />--%>
                    <asp:HiddenField ID="HiddenFieldProductId" runat="server" />
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
                            <td class="style10" align="left">
                                Price</td>
                            <td class="style8" align="left">
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
                            <td class="style9" align="left">
                                Description</td>
                            <td class="style7" colspan="2" align="left">
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
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11" colspan="7">


    <asp:DataList ID="DataList1" runat="server" DataKeyField="ColourId" 
        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="5" RepeatDirection="Horizontal" Width="661px">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                Height="74px" 
                ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                style="margin-right: 2px" Width="123px" />
<br />
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



                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">



    <asp:DataList ID="DataList2" runat="server" DataKeyField="Expr1" 
        DataSourceID="SqlDataSource2">
        <ItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" 
                Text='<%# Eval("ProductName") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            Comments:
            <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT Review.ProductId, Product.ProductName, Product.ProductId AS Expr1, Review.Comments, RegisteredUser.Name FROM Review INNER JOIN RegisteredUser ON Review.UserId = RegisteredUser.UserId INNER JOIN Product ON Review.ProductId = Product.ProductId WHERE (Product.ProductId = @productId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenFieldProductId" Name="productId" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>


                </td>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            </table>


    <br />
    <br />
    <br />


</asp:Content>
