using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;
using System.IO;

namespace ShoppingCart.UI.Admin
{
    public partial class AddMoreColourToProducts : System.Web.UI.Page
    {
        ColourController colour = new ColourController();
        ProductController product = new ProductController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ProductId = Convert.ToInt32(Session["AddColourProductId"]);
                var data = product.Search(ProductId);
                LbProductName.Text = data.Name;
                HiddenField1.Value = "0";
                HiddenField2.Value = Server.MapPath("~/Images/ColorImage");
            }

        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            colour.Insert(new Colour
            {
                Colourname = ddlColourSelect.SelectedItem.Text,
                ProductId = Convert.ToInt32(Session["AddColourProductId"])
                // ProductId = 11
            });
            var id = colour.GetMaxId();
            HiddenField1.Value = id.ToString();
        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            int i = 0, j = 0;

            int[] store = new int[20];
           int maxid = colour.GetMaxId();
         //   int maxid = 11;
            bool flag = false;
            DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/Images/ColorImage"));
            int greater = 0;
            foreach (var item in di.GetFiles())
            {
                if (item.Name.StartsWith(maxid.ToString()))
                {

                    string[] sp = item.Name.Split('-');
                    string value = sp[1];
                    string[] va = value.Split('.');
                    int rslt = Convert.ToInt32(va[0]);
                    store[j] = rslt;
                    if (store[j] > greater)
                    {
                        greater = store[j];
                        j++;
                    }
                    flag = true;
                }

                var data = from c in colour.GetallData() select c.ColourId;
                foreach (var d in data)
                {
                    if ((item.Name.StartsWith(d.ToString()) == false) && (item.Name.StartsWith(maxid.ToString()) == false))
                    {

                        break;
                        //flag = false;
                    }
                }
            }
            if (flag == true)
            {
                string cmbine0 = string.Format("~/Images/ColorImage/{0}-{1}.jpg", maxid, greater + 1);
                FileUpload2.SaveAs(Server.MapPath(cmbine0));



            }
            else
            {
                i = Convert.ToInt32(Session["img"]) + 1;
                Session["img"] = i;
                string cmbine1 = string.Format("~/Images/ColorImage/{0}-{1}.jpg", maxid, i);
                FileUpload2.SaveAs(Server.MapPath(cmbine1));



                Session["img"] = 0;
            }

            DataList1.DataBind();
            ////=======================
           
           
            HiddenField2.Value = Server.MapPath("~/Images/ColorImage");
            DataList1.DataBind();
        }
        

    }
}