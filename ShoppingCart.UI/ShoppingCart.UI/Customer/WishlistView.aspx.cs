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
    public partial class WishlistView : System.Web.UI.Page
    {
        WishlistController wishlist = new WishlistController();
        CartController cart = new CartController();
        ProductController product = new ProductController();
        ColourController _color = new ColourController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "WishlistRemove")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                wishlist.Delete(id);
                DataList1.DataBind();
            }
            else if(e.CommandName == "MoveCart")
            {
                int wishlistId = Convert.ToInt32(e.CommandArgument);
                var wishlistdetails = wishlist.Search(wishlistId);
                var colorSearch = _color.Search(wishlistdetails.ColorId);
                var data = product.Search(colorSearch.ProductId);
                int UserId = Convert.ToInt32(Session["UserId"]);
                bool item = cart.ProductSearchByColor(colorSearch.ProductId, UserId,colorSearch.Colourname);

                if (item == true)
                {
                    cart.Insert(new Cart
                    {
                        ProductId = data.ProductId,
                        Quantity = 1,
                        Date = DateTime.Today,
                        UserId = UserId,
                        NewColorId = wishlistdetails.ColorId,
                        Size = data.Size,
                        ColorId=colorSearch.Colourname
                    });
                    wishlist.Delete(wishlistId);
                     Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                  //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                     lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                    DataList1.DataBind();
                }
               
            }
            else if (e.CommandName == "ProductView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                Session["ProductViewId"] = colorid;

                Response.Redirect("~/Customer/ProductQuickView.aspx");
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}