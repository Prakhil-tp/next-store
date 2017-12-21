using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class UserView : System.Web.UI.Page
    {
        RegisteredUserController user = new RegisteredUserController();
        ReviewController _review = new ReviewController();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProfileView")
            {
                int UserId = Convert.ToInt32(e.CommandArgument);
                HiddenFieldUserId.Value = UserId.ToString();
                ImgProfilePic.ImageUrl = "~/Images/ProfilePic/" + HiddenFieldUserId.Value + ".jpg";
                var data = user.search(Convert.ToInt32(HiddenFieldUserId.Value));
                LbName.Text = data.Name;
                MultiView1.ActiveViewIndex = 1;
            }

        }

     

    

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == "blockView")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
               var data= _review.GetallReview(userId);
               foreach (var item in data)
               {
                   _review.UpdateBlock("block", item.ReviewId);
               }
            }
        }

        

        
    }
}