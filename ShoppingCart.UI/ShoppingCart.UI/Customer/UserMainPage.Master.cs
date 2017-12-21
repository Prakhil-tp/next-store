using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using System.IO;

namespace ShoppingCart.UI.Customer
{
    public partial class UserMainPage : System.Web.UI.MasterPage
    {
        AccountController account = new AccountController();
        RegisteredUserController user = new RegisteredUserController();
        ColourController _color = new ColourController();
        CategoryController _category = new CategoryController();
        BrandController _brand = new BrandController();
        CartController _cart = new CartController();
        WishlistController _wishlist = new WishlistController();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
               

              

            //}
                if (!IsPostBack)
                {
                    string userid = Session["UserId"].ToString();
                    lblcart.Text = _cart.getTotalCountOfCart(Convert.ToInt32(userid)).ToString();
                    lblwishlist.Text = _wishlist.getTotalCountOfCart(Convert.ToInt32(userid)).ToString();
                    //DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/Images/ProfilePic/"));
                    //foreach (var item in di.GetFiles())
                    //{
                    //    if (item.Name.StartsWith(userid))
                    //    {
                    //        imgprofile.ImageUrl = "~/Images/ProfilePic/" + userid + ".jpg";
                    //    }
                    //    else
                    //    {
                    //        imgprofile.ImageUrl = "~/Images/ProfilePic/male.png";
                    //    }
                    //}
                    imgprofile.ImageUrl = "~/Images/ProfilePic/" + userid + ".jpg";
                 //   string userid12 = Session["UserId"].ToString();
                    lblcart.Text = _cart.getTotalCountOfCart(Convert.ToInt32(userid)).ToString();
                    lblwishlist.Text = _wishlist.getTotalCountOfCart(Convert.ToInt32(userid)).ToString();
                }

               string userid12 = Session["UserId"].ToString();
                    lblcart.Text = _cart.getTotalCountOfCart(Convert.ToInt32(userid12)).ToString();
                    lblwishlist.Text = _wishlist.getTotalCountOfCart(Convert.ToInt32(userid12)).ToString();
             
                    foreach (var item in _brand.GetallData())
                    {
                        Button b1 = new Button
                        {
                            Height = 30,
                            Width = 100,
                            Text = item.BrandName,
                            CssClass = "submenuButton",
                            CommandArgument = item.BrandId.ToString()
                        };
                        b1.Command += Load_BrandProduct;
                        PlaceHolder1.Controls.Add(b1);
                    }
                    foreach (var item in _category.GetallData())
                    {
                        Button b = new Button
                        {
                            Height = 30,
                            Width = 100,
                            Text = item.CategoryName,
                            CssClass = "submenuButton",
                            CommandArgument = item.CategoryId.ToString(),

                        };
                        b.Command += Load_Items;
                        PlaceHolder2.Controls.Add(b);
                    }

                 
               
        }

        protected void Load_Items(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/Customer/ViewProductCategory.aspx?category=" + e.CommandArgument);
        }



        public void Load_BrandProduct(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/Customer/ViewProductBrand.aspx?brand=" + e.CommandArgument);
        }

        protected void txtSearchItem_TextChanged(object sender, EventArgs e)
        {
            Session["UserSearchItem"] = txtSearchItem.Text;
            Response.Redirect("~/Customer/UserSearchItem.aspx");
        }
    }
}