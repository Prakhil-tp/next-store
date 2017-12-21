using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class Productdetails : System.Web.UI.Page
    {
        ProductController product = new ProductController();
        CartController cart = new CartController();
        WishlistController wishlist = new WishlistController();
        ColourController _colour = new ColourController();
        ReviewController _review = new ReviewController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int colorid = Convert.ToInt32(Session["ProductViewId"]);
                var colorDetails = _colour.Search(colorid);
                var data = product.Search(colorDetails.ProductId);
                LbName.Text = data.Name;
                Labelcolor.Text = data.Colour;
                LabelSize.Text = data.Size.ToString();
                Lbprice.Text = Convert.ToString(data.Price);
                LbDescription.Text = data.Description;
                Image1.Src = "~/Images/ColorImage/" + colorid + "-1.jpg";

                var item = product.Search(colorDetails.ProductId);
                string colour = item.Colour;
                int ColourId = _colour.GetColourId(colorDetails.ProductId, colorDetails.Colourname);
                HiddenColourId.Value = ColourId.ToString();
                HiddenPath.Value = Server.MapPath("~/Images/ColorImage");
                HiddenFieldProductId.Value = colorDetails.ProductId.ToString();
                DataListSideImage.DataBind();
            }

        }

   

        protected void DataListSideImage_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ClickedImageView")
            {
                var id = e.CommandArgument;
                Image1.Src = "~/Images/ColorImage/" + id;

            }
        }

      

        protected void DataListColorImages_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                Session["ProductViewId"] = colorid;
                HiddenFieldProductId.Value = colorid.ToString();
                Response.Redirect("~/Customer/ProductQuickView.aspx");

            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                _review.Delete(id);
                DataList2.DataBind();
                
            }
        }

        protected void LinkButtonEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/EditProduct.aspx");
        }
    }
}