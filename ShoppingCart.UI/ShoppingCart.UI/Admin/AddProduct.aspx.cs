using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;
using System.IO;

namespace ShoppingCart.UI.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        ColourController colour = new ColourController();
        ProductController product = new ProductController();
        SizeController size = new SizeController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
               // MultiView1.ActiveViewIndex = 1;
                HiddenField1.Value = "0";
                HiddenField2.Value = Server.MapPath("~/Images/ColorImage");
              
            }
        }


        
        protected void Cmd_AddProduct_Click(object sender, EventArgs e)
        {
            product.Insert(new Product {
            BrandId=Convert.ToInt32(ddlBrand.SelectedItem.Value),
            CategoryId=Convert.ToInt32(ddlCategory.SelectedItem.Value),
            Colour=ddlColour.SelectedItem.Value,
            Description=txtDescription.Text,
            Name=txtprodname.Text,
            Price=float.Parse(txtPrice.Text),
            Size=Convert.ToInt32(ddlSize.SelectedItem.Value),
            Stock=Convert.ToInt32(txtStock.Text),
            
            });
            int productid = product.GetMaxId();
            HiddenField3.Value = productid.ToString();
            string path = "~/Images/ProductImage/"+productid+".jpg";
      
           // FileUpload1.SaveAs(Server.MapPath(path));
            MultiView1.ActiveViewIndex = 1;
         
            txtDescription.Text = "";
            txtPrice.Text = "";
            txtprodname.Text = "";
            txtStock.Text = "";


           
        
            
        }

        
        protected void cmdsave_Click(object sender, EventArgs e)
        {
            colour.Insert(new Colour
            {
                Colourname=ddlColour0.SelectedItem.Text,
        ProductId=Convert.ToInt32(HiddenField3.Value)
               // ProductId = 11
            });
            var id= colour.GetMaxId();
            HiddenField1.Value = id.ToString();

            if (txt5.Text != null)
            {
                 size.insert(new Size
                                {
                                    ProductId = Convert.ToInt32(HiddenField3.Value),
                                    ColourId = id,
                                    ProductSize = Convert.ToInt32(lbl5.Text),
                                    Quantity=Convert.ToInt32(txt5.Text)
                                });
            }
            if (txt5.Text != null)
            {
                size.insert(new Size
                {
                    ProductId = Convert.ToInt32(HiddenField3.Value),
                    ColourId = id,
                    ProductSize = Convert.ToInt32(lbl5.Text),
                    Quantity = Convert.ToInt32(txt5.Text)
                });
            }
            if (txt6.Text != null)
            {
                size.insert(new Size
                {
                    ProductId = Convert.ToInt32(HiddenField3.Value),
                    ColourId = id,
                    ProductSize = Convert.ToInt32(lbl6.Text),
                    Quantity = Convert.ToInt32(txt6.Text)
                });
            }
            if (txt7.Text != null)
            {
                size.insert(new Size
                {
                    ProductId = Convert.ToInt32(HiddenField3.Value),
                    ColourId = id,
                    ProductSize = Convert.ToInt32(lbl7.Text),
                    Quantity = Convert.ToInt32(txt7.Text)
                });
            }
            if (txt8.Text != null)
            {
                size.insert(new Size
                {
                    ProductId = Convert.ToInt32(HiddenField3.Value),
                    ColourId = id,
                    ProductSize = Convert.ToInt32(lbl8.Text),
                    Quantity = Convert.ToInt32(txt8.Text)
                });
            }
            if (txt9.Text != null)
            {
                size.insert(new Size
                {
                    ProductId = Convert.ToInt32(HiddenField3.Value),
                    ColourId = id,
                    ProductSize = Convert.ToInt32(lbl9.Text),
                    Quantity = Convert.ToInt32(txt9.Text)
                });
            }
            
        }

        protected void cmdadd_Click(object sender, EventArgs e)
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