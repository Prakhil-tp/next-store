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
    public partial class UserProfile : System.Web.UI.Page
    {
        RegisteredUserController user = new RegisteredUserController();

        protected void Page_Load(object sender, EventArgs e)
        {
            int UserId = Convert.ToInt32(Session["UserId"]);
            var data = user.search(UserId);
            LbName.Text = data.Name;
            ImgProfilePic.ImageUrl="~/Images/ProfilePic/"+UserId+".jpg";

        }

      
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Customer/EditProfile.aspx");   
        }
    }
}