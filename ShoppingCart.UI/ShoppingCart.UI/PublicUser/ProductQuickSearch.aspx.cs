using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.PublicUser
{
    public partial class ProductQuickSearch : System.Web.UI.Page
    {
        ProductController product = new ProductController();
        CartController cart = new CartController();
        WishlistController wishlist = new WishlistController();
        ColourController _colour = new ColourController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int colorid = Convert.ToInt32(Session["ProductSearchId"]);
                var colorDetails = _colour.Search(colorid);
                var data = product.Search(colorDetails.ProductId);
                LbName.Text = data.Name;
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

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "ProductView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = colorid;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx"); ;

            }
        }
    }
}