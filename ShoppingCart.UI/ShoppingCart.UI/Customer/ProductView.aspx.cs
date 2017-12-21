using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;




namespace ShoppingCart.UI.Customer
{       
    public partial class ProductView : System.Web.UI.Page
    {
        CartController cart = new CartController();
        ProductController product=new ProductController();
        WishlistController wishlist = new WishlistController();
        ColourController _color = new ColourController();
        SizeController _size = new SizeController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                HiddenColour.Value = "Red";
                HiddenColourPrice.Value = "Red";
                HiddenPrice11.Value = "500";
                HiddenPrice22.Value = "1500";
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
                HiddenColour.Value = "Red";
                HiddenColourPrice.Value = "Red";
                HiddenPrice11.Value = "500";
                HiddenPrice22.Value = "1500";
            }
        }

       

      protected void cmd500to1000_Click(object sender, EventArgs e)
        {
            
            HiddenPrice1.Value = "500";
            HiddenPrice2.Value = "1500";
            MultiView1.ActiveViewIndex = 1;


        }

      protected void cmd2500to3500_Click(object sender, EventArgs e)
      {
          HiddenPrice1.Value = "2500";
          HiddenPrice2.Value = "3500";
          MultiView1.ActiveViewIndex = 1;
      }

      protected void cmd1500to2500_Click(object sender, EventArgs e)
      {
          HiddenPrice1.Value = "1500";
          HiddenPrice2.Value = "2500";
          MultiView1.ActiveViewIndex = 1;
      }

      protected void cmd3500to4500_Click(object sender, EventArgs e)
      {
          HiddenPrice1.Value = "3500";
          HiddenPrice2.Value = "4500";
          MultiView1.ActiveViewIndex = 1;
      }

      protected void cmd4500to5500_Click(object sender, EventArgs e)
      {
          HiddenPrice1.Value = "4500";
          HiddenPrice2.Value = "5500";
          MultiView1.ActiveViewIndex = 1;
      }

      protected void cmdBlack_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Black";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdBlue_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Blue";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdGreen_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Green";

          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void Orange_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Orange";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdRed_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Red";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdWhite_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "White";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdYellow_Click(object sender, EventArgs e)
      {
          HiddenColour.Value = "Yellow";
          datalistColorSearch.DataBind();
          MultiView1.ActiveViewIndex = 2;
      }

      protected void cmdFind_Click(object sender, EventArgs e)
      {
          HiddenColourPrice.Value = ddlColour.SelectedItem.Value;
          if (ddlPriceRange.SelectedItem.Value == "500-1500")
          {
              HiddenPrice11.Value = "500";
              HiddenPrice22.Value = "1500";
              dlColorPriceSearch.DataBind();

          }
          else if (ddlPriceRange.SelectedItem.Value == "1500-2500")
          {
              HiddenPrice11.Value = "1500";
              HiddenPrice22.Value = "2500";
              dlColorPriceSearch.DataBind();
          }
          else if (ddlPriceRange.SelectedItem.Value == "2500-3500")
          {
              HiddenPrice11.Value = "2500";
              HiddenPrice22.Value = "3500";
              dlColorPriceSearch.DataBind();
          }
          else if (ddlPriceRange.SelectedItem.Value == "3500-4500")
          {
              HiddenPrice11.Value = "3500";
              HiddenPrice22.Value = "4500";
              dlColorPriceSearch.DataBind();
          }
          else if (ddlPriceRange.SelectedItem.Value == "4500-5500")
          {
              HiddenPrice11.Value = "4500";
              HiddenPrice22.Value = "5500";
              dlColorPriceSearch.DataBind();
          }
          MultiView1.ActiveViewIndex = 3;
          dlColorPriceSearch.DataBind();
      }

     
     
      protected void dlPriceSearchedProducts_ItemCommand(object source, DataListCommandEventArgs e)
      {
          if (e.CommandName == "ProductView")
          {
              int id = Convert.ToInt32(e.CommandArgument);
              Session["ProductViewId"] = id;

              Response.Redirect("~/Customer/ProductQuickView.aspx");

          }
          else if (e.CommandName == "CartView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
               var cololrSearch = _color.Search(colorid);
              var data = product.Search(cololrSearch.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = cart.ProductSearchByColor(data.ProductId, UserId,cololrSearch.Colourname);

              if (item == true)
              {
                  cart.Insert(new Cart
                  {
                      ProductId = data.ProductId,
                      Quantity = 1,
                      Date = DateTime.Today,
                      UserId = UserId,
                      ColorId = cololrSearch.Colourname,
                      Size = data.Size,
                      NewColorId=colorid
                  });

                  Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                  //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                  lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                  //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
              }

          }
          else if (e.CommandName == "WishlistView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
              var cololrSearch = _color.Search(colorid);
              var data = product.Search(cololrSearch.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = wishlist.ProductSearch(cololrSearch.ProductId, UserId,colorid);

              if (item == true)
              {
                  wishlist.Insert(new Wishlist
                  {
                      ProductId = data.ProductId,
                      UserId = UserId,ColorId=colorid
                  });
                 // Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                   Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                 // lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                     lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();

              }
          } 

      }

    

      protected void datalistColorSearch_ItemCommand(object source, DataListCommandEventArgs e)
      {
          if (e.CommandName == "CartView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
              var Cartdetails = _color.Search(colorid);
              var data = product.Search(Cartdetails.ProductId);

              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = cart.ProductSearchByColor(Cartdetails.ProductId, UserId, Cartdetails.Colourname);

              if (item == true)
              {
                  cart.Insert(new Cart
                  {
                      ProductId = data.ProductId,
                      Quantity = 1,
                      Date = DateTime.Today,
                      UserId = UserId,
                      ColorId = Cartdetails.Colourname,
                      Size = data.Size,
                      NewColorId=Cartdetails.ColourId
                  });
                  Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                  //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                  lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                  //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();

              }

          }
          else if (e.CommandName == "WishlistView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
              var cololrSearch = _color.Search(colorid);
              var data = product.Search(cololrSearch.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = wishlist.ProductSearch(cololrSearch.ProductId, UserId, colorid);

              if (item == true)
              {
                  wishlist.Insert(new Wishlist
                  {
                      ProductId = data.ProductId,
                      UserId = UserId,
                      ColorId=colorid
                  });

                //  Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                //  lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                   lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
              }
          }
          else if (e.CommandName == "ProductView")
          {
              int id = Convert.ToInt32(e.CommandArgument);
              Session["ProductViewId"] = id;

              Response.Redirect("~/Customer/ProductQuickView.aspx");

          }
      }

      protected void dlColorPriceSearch_ItemCommand(object source, DataListCommandEventArgs e)
      {
          if (e.CommandName == "CartView")
          {
              int Colorid = Convert.ToInt32(e.CommandArgument);
              var ColorDetails = _color.Search(Colorid);
              var data = product.Search(ColorDetails.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = cart.ProductSearch(Colorid, UserId);

              if (item == true)
              {
                 
                        cart.Insert(new Cart
                        {
                            ProductId = data.ProductId,
                            Quantity = 1,
                            Date = DateTime.Today,
                            UserId = UserId,
                            ColorId =ColorDetails.Colourname,
                            NewColorId=Colorid,
                            Size = data.Size
                        });
                        Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                        //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                        lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                        //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                  

              }

          }
          else if (e.CommandName == "WishlistView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
              var colorSearch = _color.Search(colorid);
              var data = product.Search(colorSearch.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = wishlist.ProductSearch(colorSearch.ProductId, UserId,colorid);

              if (item == true)
              {
                  wishlist.Insert(new Wishlist
                  {
                      ProductId = data.ProductId,
                      UserId = UserId,
                      ColorId=colorid
                  });
            //      Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                   Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
               //   lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();

              }
          }
          else if (e.CommandName == "ProductView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);

              Session["ProductViewId"] = colorid;

              Response.Redirect("~/Customer/ProductQuickView.aspx");

          }
      }

      protected void datalistProductView_ItemCommand(object source, DataListCommandEventArgs e)
      {
          if (e.CommandName == "CartView")
          {
              int Colorid = Convert.ToInt32(e.CommandArgument);
              var ColorDetails = _color.Search(Colorid);
              var data = product.Search(ColorDetails.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = cart.ProductSearchByColor(ColorDetails.ProductId, UserId,ColorDetails.Colourname);
            
              if (item == true)
              {
                
                  cart.Insert(new Cart
                      {
                          ProductId = data.ProductId,
                          Quantity = 1,
                          Date = DateTime.Today,
                          UserId = UserId,
                          ColorId = ColorDetails.Colourname,
                          NewColorId = ColorDetails.ColourId,
                          Size = data.Size
                      });

                      Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                      //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                      lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                      //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                 
              }

          }
          else if (e.CommandName == "WishlistView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);
              var ColorSearch = _color.Search(colorid);
              var data = product.Search(ColorSearch.ProductId);
              int UserId = Convert.ToInt32(Session["UserId"]);
              bool item = wishlist.ProductSearch(ColorSearch.ProductId, UserId, colorid);

              if (item == true)
              {
                  wishlist.Insert(new Wishlist
                  {
                      ProductId = data.ProductId,
                      UserId = UserId,
                      ColorId=colorid
                  });

                 // Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                    Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                 // lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                      lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
              }
          }
          else if (e.CommandName == "ProductView")
          {
              int colorid = Convert.ToInt32(e.CommandArgument);

              Session["ProductViewId"] = colorid;

              Response.Redirect("~/Customer/ProductQuickView.aspx");

          }
      }

      protected void HiddenPrice2_ValueChanged(object sender, EventArgs e)
      {

      }

      


    }
}