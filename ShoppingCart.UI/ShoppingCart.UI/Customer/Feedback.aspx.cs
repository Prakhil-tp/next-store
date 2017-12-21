using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Customer
{
    public partial class Feedback : System.Web.UI.Page
    {
        FeedbackController feedback = new FeedbackController();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void CmdSubmit_Click(object sender, EventArgs e)
        {
            int userid =Convert.ToInt32( Session["UserId"]);
            feedback.Insert(TxtFeedback.Text, userid,DateTime.Today);
        }
            
        }
    }
