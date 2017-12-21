<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoppingCart.UI.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="Css/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="Css/show_category.js" type="text/javascript"></script>
    <link href="Css/MyCss.css" rel="stylesheet" type="text/css" />
    <link href="Css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Css/style.css" rel="stylesheet" type="text/css" />
    <script src="Css/jquery.leanModal.min.js" type="text/javascript"></script>

         <script type="text/javascript">
             function abc(n) {
                 $("#modal_trigger").leanModal({ top: 200, overlay: 0.6, closeButton: ".modal_close" });
                 if (n == 0) {
                     $("#modal_trigger").click();
                     $(".social_login").hide();
                     $(".user_register").hide();
                     $(".user_login").show();
                     $(".header_title").text('Login');
                     return false;
                 }
                 else {
                     $("#modal_trigger").click();
                     $(".social_login").hide();
                     $(".user_login").hide();
                     $(".user_register").show();
                     $(".header_title").text('Register');
                     return false;
                 }
             }
        </script>
</head>
<body>
    <form id="form1" runat="server">
   
   <div class="main_header">
	<div class="content">
       <div class="logo left"></div>
      
         <div class="menubar right">
        	<div class="cart" id="loginIcon">
            	<h4>SIGN UP <span id="j_log" onclick="abc(0)">LOGIN</span></h4>
                <div class="clear"></div>
                <div class="container">
                 <a id="modal_trigger" href="#modal" class="btn" style="display:none">Click here to Login or register</a>

            
               
             
               </div> 
                
                
            </div>
         
            
        <div class="clear"></div>
        </div>
       
        <div class="menubar right">
        	<table width="" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td rowspan="2">
    	<div class="ico"><img src="Images/SiteImg/shipping.png" /></div>
    </td>
    <td>FREE SHIPPING</td>
  </tr>
  <tr>
    <td><span>On order, save $100.00</span></td>
  </tr>
</table>
<table width="" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td rowspan="2">
    	<div class="ico"><img src="Images/SiteImg/return.png" /></div>
    </td>
    <td>FREE RETURN</td>
  </tr>
  <tr>
    <td><span>Free 90 days return policy</span></td>
  </tr>
</table>

      </div>
        
        
      <div class="clear"></div>
    </div>

</div>





<div class="main_menubar">
	<div class="content">
    	<div class="menu left">
            <asp:Button ID="Button13" runat="server" Text="HOME"  CssClass="menuButton left"/>
        </div>
    	<div class="menu left"><asp:Button ID="Button14" runat="server" Text="CATEGORIES"  CssClass="menuButton left"/> &nbsp;<span class="arrow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        	<div class="category_container">
            	
                <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>

            </div>
        </div>
        <div class="menu left"><asp:Button ID="Button15" runat="server" Text="TOP RATED"  CssClass="menuButton left"/></div>
        <div class="menu left"><asp:Button ID="cmdBrand" runat="server" Text="BRANDS"  
                CssClass="menuButton left" />&nbsp;<span class="arrow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        	<div class="category_container">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>
        </div>
        <div class="menu left"><asp:Button ID="Button17" runat="server" Text="ABOUT US"  CssClass="menuButton left"/></div>
        <div class="menu left last"><asp:Button ID="Button18" runat="server" Text="CONTACT"  CssClass="menuButton left"/></div>
        
        <div class="search right">
            <asp:TextBox ID="txtSearchItem" runat="server" placeholder="Search Items "></asp:TextBox>
            <%--<input type="text" placeholder="Search Items " />--%>
        </div>

        
    </div>
</div>



<div class="banner">
	<div class="content">
	<h1><br/><br/>Save 50% in first purchase Dingolfication Sudaplica &trade;</h1>
    <h3>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae</h3>
    <br/>
    <p>Action Center lists important messages about security and maintenance settings that need your attention. Red items in Action Center are labeled Important, and<br/> indicate significant issues that should be addressed soon, such as an outdated antivirus program that needs updating. Yellow items are suggested tasks that you <br/>should consider addressing, like recommended maintenance tasks.
</p>
<br/>
<button>VIEW MORE &raquo;</button>
	</div>
</div>






   <asp:DataList ID="datalistProductView" runat="server" DataKeyField="ColourId" 
                DataSourceID="SqlDataSource3"  RepeatColumns="4" 
        onitemcommand="datalistProductView_ItemCommand">
        <ItemTemplate>
                    &nbsp;&nbsp;
                    <div class="product_container">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("ColourId") %>' CommandName="ProductView" 
                            Height="204px" 
                            ImageUrl='<%# Eval("ColourId", "~/Images/ColorImage/{0}-1.jpg") %>' 
                            style="margin-right: 2px" Width="172px" />
                        <br />
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' CssClass="lbl" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="#990033" Text="$" 
                            CssClass="lblprice"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" ForeColor="#990033" 
                            Text='<%# Eval("Price") %>' CssClass="lblprice" />
            </div>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
                
                
        SelectCommand="SELECT Colour.ColourId, Colour.Colourname, Product.ProductId, Product.ProductName, Product.Price, Product.Colour FROM Colour INNER JOIN Product ON Colour.ProductId = Product.ProductId AND Colour.Colourname = Product.Colour">
    </asp:SqlDataSource>



<div class="brand_container">
	<div class="content">
		<h3>OUR BRANDS</h3>
        <p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
        <br/>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="brand left">
                    <asp:Image ID="Image1" runat="server" CssClass="brand left" 
                        ImageUrl='<%# Eval("BrandId", "~/Images/BrandLogos/{0}.jpg") %>' />
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
       	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
            SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
       
        
    </div>    	
</div>




<div class="main_footer">
	<div class="content">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300" align="left" valign="top">
    	<br/><br/>
    	<img src="img/logo-footer.png" />
        <br/><br/>
        <p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae</p>
        <br/>
        <p>Cerat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
    </td>
    <td width="200" align="left" valign="top">
    	<br/><br/>
        <ul>
        	<li>MY ACCOUNT</li>
        	<li>My orders</li>
        	<li>My credit slips</li>
        	<li>My addresses</li>
        	<li>My personal info</li>
        </ul>
    </td>
    <td width="200" align="left" valign="top">
        <br/><br/>
        <ul>
        	<li>INFORMATION</li>
        	<li>Specials</li>
        	<li>New products</li>
        	<li>Best sellers</li>
        	<li>Manufactures</li>
        </ul>
    </td>
    <td width="200" align="left" valign="top">
    	       <br/><br/>
        <ul>
        	<li> EXTRAS</li>
        	<li>Terms and conditions</li>
        	<li>About us</li>
        	<li>Secure payment</li>
        	<li>Typo</li>
        </ul></td>
    <td width="200" align="left" valign="top">
           <br/><br/>
        <ul>
        	<li>CUSTOMER SERVICE</li>
        	<li>Our stores</li>
        	<li>Contact us</li>
        	<li>Site map</li>
        </ul>
        <table width="" border="0" cellspacing="5" cellpadding="0" class="connect">
  <tr>
    <td bgcolor="#A2A2A2"></td>
    <td bgcolor="#929292"></td>
    <td bgcolor="#737373"></td>
    <td bgcolor="#515151"></td>
  </tr>
</table>


    </td>
  </tr>
</table>

    </div>
</div>




  <div id="modal" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">Login</span>
                    <span class="modal_close"><i class="1fa"><img src="../images/close.png"/></i></span>
                </header>
    <section class="popupBody">
  <div class="user_login">
                        <form>
                            <label>Email / Username</label>
                            <%--<input type="text" />--%>
                             <asp:TextBox ID="txtUsername" runat="server" Width="182px"></asp:TextBox>
             
                            <br />

                            <label>Password</label>
                            <%--<input type="password" />--%>
                              <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="182px"></asp:TextBox>
              
                            <br />

                            <div class="checkbox">
                                <input id="remember" type="checkbox" />
                                <label for="remember">Remember me on this computer</label>
                            </div>

                            <div class="action_btns">
                                <!-- <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>-->
                                <div class="one_half last">
                                <%--<a href="#" class="btn btn_red">Login</a>--%>
                                <asp:Button ID="cmdLogin" runat="server" onclick="cmdLogin_Click" 
                                    Text="Log in" />
                                </div>
                            </div>
                        </form>

                        <a href="#" class="forgot_password">Forgot password?</a>
                    </div>
                    </section>
                    </div>





    </form>
</body>
</html>



<%--<table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <h1>
                        <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                    </h1>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style11">
                    Username :</td>
                <td class="style2">
                    <asp:TextBox ID="txtUsername" runat="server" Width="182px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style11">
                    Password :</td>
                <td class="style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="182px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                </td>
                <td class="style8">
                    <table class="style9">
                        <tr>
                            <td class="style10">
                                <asp:Button ID="CmdRegister" runat="server" onclick="CmdRegister_Click" 
                                    Text="Register" Width="67px" />
                            </td>
                            <td>
                                <asp:Button ID="cmdLogin" runat="server" onclick="cmdLogin_Click" 
                                    Text="Log in" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style5">
                </td>
                <td class="style5">
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style11">
                    <asp:Label ID="Lblinvalid" runat="server" ForeColor="#CC3300" 
                        Text="Invalid UserName Or Password" Visible="False"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>--%>