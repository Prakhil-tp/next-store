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
    public partial class EditProfile : System.Web.UI.Page
    {
        RegisteredUserController user = new RegisteredUserController();
        static RegisteredUser r;
        static int userId=0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                 userId = Convert.ToInt32(Session["UserId"]);
    
                r = user.search(userId);
                TxtName.Text = r.Name;
                TxtAddress.Text = r.Address;
                TxtPincode.Text = r.Pincode;
                TxtPhno.Text = r.PhNo;
                TxtEmail.Text = r.Email;
                TxtDistrict.Text = r.District;
                TxtLocality.Text = r.Locality;
                TxtState.Text = r.State;

            }

        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            user.Update(new RegisteredUser
            {
                UserId=userId,
                Name = TxtName.Text,
                Address = TxtAddress.Text,
                Pincode = TxtPincode.Text,
                PhNo = TxtPhno.Text,
                Email = TxtEmail.Text,
                District = TxtDistrict.Text,
                Locality = TxtLocality.Text,
                UserName=r.UserName,
                Password=r.Password,
                Status=r.Status,
                State=TxtState.Text
            });

        }
    }
}