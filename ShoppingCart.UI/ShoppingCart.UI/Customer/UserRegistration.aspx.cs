using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;
using System.Drawing;

namespace ShoppingCart.UI.Customer
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        RegisteredUserController RegisterdUser = new RegisteredUserController();
        AccountController Account = new AccountController();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void CmdSignIn_Click(object sender, EventArgs e)
        {
            //string a=txtPassword.Text;
            //string b=txtConfirmPassword.Text;
            //if (a == b)
            //{
            //    RegisterdUser.Insert(new RegisteredUser
            //    {
            //        Address = txtAddress.Text,
            //        District = txtDistrict.Text,
            //        Email = txtEmail.Text,
            //        Locality = txtLocality.Text,
            //        Name = txtFirstName.Text,
            //        Password = txtPassword.Text,
            //        PhNo = txtPhonNo.Text,
            //        Pincode = txtPinCode.Text,
            //        State = txtState.Text,
            //        Status = "false",
            //        UserName = txtUserName.Text

            //    });
            //    Account.Insert(txtUserName.Text, txtConfirmPassword.Text, "User");
            //    int Userid = RegisterdUser.IdSearch(txtUserName.Text, txtConfirmPassword.Text);
            //    string path = "~/Images/ProfilePic/" + Userid + ".jpg";
            //    if (FileUpload1.FileName == "")
            //    {
            //        Bitmap bit = new Bitmap(Server.MapPath("~/Images/ProfilePic/male.png"));
            //        bit.Save(Server.MapPath(path));
            //    }
            //    else
            //    {
            //        FileUpload1.SaveAs(Server.MapPath(path));
            //    }

            //    var id = RegisterdUser.IdSearch(txtUserName.Text, txtPassword.Text);
            //    Session["UserId"] = id;
            //    Response.Redirect("~/Customer/UserHomePage.aspx");

            //}
            //else
            //{
            //    blpwd.Visible = true;
            //}
 
        }
    }
}