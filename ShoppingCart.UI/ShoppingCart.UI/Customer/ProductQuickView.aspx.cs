using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;
using System.Net.Mail;


namespace ShoppingCart.UI.Customer
{
    public partial class ProductQuickView : System.Web.UI.Page
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
                int colorid= Convert.ToInt32(Session["ProductViewId"]);
                var colorDetails = _colour.Search(colorid);
                var data = product.Search(colorDetails.ProductId);
                int userid = Convert.ToInt32(Session["UserId"]);
                bool f = _review.BlockedPerson(userid);
                if (f == true)
                {
                    cmdreview.Visible = false;
                }
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int colorid = Convert.ToInt32(Session["ProductViewId"]);
            var colorDetails = _colour.Search(colorid);
            var data = product.Search(colorDetails.ProductId);
            int UserId = Convert.ToInt32(Session["UserId"]);
            bool item = cart.ProductSearchByColor(colorDetails.ProductId, UserId,colorDetails.Colourname);

            if (item == true)
            {
                cart.Insert(new Cart
                {
                    ProductId = data.ProductId,
                    Quantity = 1,
                    Date = DateTime.Today,
                    UserId = UserId,
                    Size = data.Size,
                    NewColorId=colorid,
                    ColorId=colorDetails.Colourname
                });

                Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

          int colorid = Convert.ToInt32(Session["ProductViewId"]);
            var colorDetails = _colour.Search(colorid);
            var data = product.Search(colorDetails.ProductId);
            int UserId = Convert.ToInt32(Session["UserId"]);
            bool item = wishlist.ProductSearch(colorDetails.ProductId, UserId,colorDetails.ColourId);

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

        protected void DataListSideImage_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "ClickedImageView")
            {
                var id = e.CommandArgument;
                Image1.Src = "~/Images/ColorImage/" + id ;
                
            }
        }

        protected void cmdreview_Click(object sender, EventArgs e)
        {
            cmdreviewsave.Visible = true;
            txtreviewCommant.Visible = true;
        }

        protected void cmdreviewsave_Click(object sender, EventArgs e)
        {
            int userid=Convert.ToInt32( Session["UserId"]);
            _review.Insert(userid, txtreviewCommant.Text, Convert.ToInt32(HiddenFieldProductId.Value),"Noblock");
            txtreviewCommant.Text = "";
            DataList2.DataBind();
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

        protected void cmdsendtomail_Click(object sender, EventArgs e)
        {
            txtmail.Visible = true;
            cmdsend.Visible = true;
        }

        protected void cmdsend_Click(object sender, EventArgs e)
        {
            
            MailMessage mail = new MailMessage();
            mail.To.Add(txtmail.Text);
            mail.Subject = "Products";
            mail.Body = "hai this products jfe hgerg" ;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

            //  smtp.Host = ; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
            ("something@gmail.com", "password");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mail);
                Response.Write("Mail send..");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

       

        
    }
}