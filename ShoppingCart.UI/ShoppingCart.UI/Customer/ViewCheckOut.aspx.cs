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
    public partial class ViewCheckOut : System.Web.UI.Page
    {
        CartController _cart = new CartController();
        OrderController order = new OrderController();
        CheckOutControl _checkout = new CheckOutControl();
        SizeController _size = new SizeController();
        ProductController _product = new ProductController();
        ProductOrderController _productOrder = new ProductOrderController();
        DiscountController _discount = new DiscountController();
        static List<ddllist> li = new List<ddllist>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                int userid=Convert.ToInt32( Session["UserId"]);
              lbltotal.Text = _cart.CartTotal(userid).ToString();
              //  lbltotal.Text = _checkout.GrandTotal(userid);

            }
           // GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "EditView")
            //{
            //    hiddenfileldcartid.Value = e.CommandArgument.ToString();

            //    MultiView1.ActiveViewIndex = 1;
            //}
        }

        protected void cmdupdatesize_Click(object sender, EventArgs e)
        {
            //_cart.UpdateSizeAndQuantity(Convert.ToInt32(ddlsze.SelectedItem.Value),
            //    Convert.ToInt32(txtquantity.Text), Convert.ToInt32(hiddenfileldcartid.Value));
            //int userid = Convert.ToInt32(Session["UserId"]);
            //lbltotal.Text = _cart.CartTotal(userid).ToString();
            //GridView1.DataBind();
            //MultiView1.ActiveViewIndex = 0;
        }

        protected void cmdnext_Click(object sender, EventArgs e)
        {
            int orderid = Convert.ToInt32(Session["OrderId"]);
            int userid = Convert.ToInt32(Session["UserId"]);
            var delivaryDate = DateTime.Today.AddDays(7);
            order.Insert(new Order
            {

                OrderDate = DateTime.Today,
                UserId = userid,
                TotalPrice = Convert.ToSingle(lbltotal.Text),
                IsProcessedOrNot = 0,
                DeliveryDate = delivaryDate,
            });
            Session["CartId"] = order.GetMaxId();
            var Maxorderid = order.GetMaxId();
            var ProductDetails = _checkout.GetAllData(userid);
            int i = 0;
            foreach (var item in ProductDetails)
            {
               
                    _productOrder.insert(new ProductOrder
                    {
                        _Size12 = item.Size,
                        OrderId = Maxorderid,
                        ProductId = item.ColorId,
                        Quantity =item.Quantity,
                        Status = "false"
                    });
                    var ss = _size.SearchData(item.ColorId,item.Size);
                    int quantity = ss.Quantity - Convert.ToInt32(item.Size);
                    _size.updateQuantity(ss.SizeId, quantity);
                }




            Session["TotalAmount"] = lbltotal.Text;
            
            lbl_total.Text = lbltotal.Text;
            int total = Convert.ToInt32(lbltotal.Text);
            if (total > 500)
            {
                lbl_deliveryCharge.Text = "0";
            }
            else
            {
                lbl_deliveryCharge.Text = "100";
            }
            var discountItems = from c in _discount.GetallData() select c;
            foreach (var item in discountItems)
            {
                if (item.Price <= total)
                {
                    var date1 = DateTime.Compare(DateTime.Today,DateTime.Parse( item.ValidityFrom));
                    var date2 = DateTime.Compare(DateTime.Today,DateTime.Parse( item.ValidityTo));

                    if (date1 > 0 && date2 < 0)
                    {
                        lbl_Discount.Text = item.DiscountPercentage;
                    }
                    else
                    {
                        lbl_Discount.Text = "0";
                    }
                    
                }
                else
                {
                    lbl_Discount.Text = "0";
                }
                
            }
            int GTotal = total + Convert.ToInt32(lbl_deliveryCharge.Text);
             float discount=  ( total * Convert.ToInt32(lbl_Discount.Text) )/100;
             float GrandTotal = GTotal - discount;
            lbl_GrandTotal.Text = GrandTotal.ToString();

            MultiView1.ActiveViewIndex = 2;
        }
        static float grandtotal = 0;
        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
          
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //       // int txtQuantity12 = 1;
               
        //        //float to = 0;
        //        //string colorid = (e.Row.FindControl("lblcolorid") as Label).Text;
              
        //        //    DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);
        //        //    DropDownList1.DataSource = _size.GetallSize(Convert.ToInt32(colorid));
        //        //    DropDownList1.DataTextField = "ProductSize";
        //        //    DropDownList1.DataValueField = "ColourId";
        //        //    DropDownList1.DataBind();
               
        //        //string txtQuantity12 = (e.Row.FindControl("txtQuantity") as TextBox).Text;
        //        //var data = (from c in _cart.GetallData() where c.NewColorId == Convert.ToInt32(colorid) select c).SingleOrDefault();
        //        //var ProductDatails = (from c in _product.GetallData() where c.ProductId == data.ProductId select c).SingleOrDefault();
        //        //if (txtQuantity12 == "")
        //        //{
        //        //    float total = ProductDatails.Price * 1;
        //        //    grandtotal += (to + total);
        //        //    lbltotal.Text = grandtotal.ToString();
        //        //     Label lblnewtotal = (e.Row.FindControl("lblnewtotal") as Label);
        //        //     lblnewtotal.Text = total.ToString();
        //        //}
        //        //else
        //        //{
        //        //    float total = ProductDatails.Price *Convert.ToInt32 (txtQuantity12);
        //        //    grandtotal += (to + total);
        //        //    lbltotal.Text = grandtotal.ToString();
        //        //    Label lblnewtotal = (e.Row.FindControl("lblnewtotal") as Label);
        //        //    lblnewtotal.Text = total.ToString();
        //        //}
               
        //    }
        //}

        protected void cmdok_Click(object sender, EventArgs e)
        {
            //var ddlsize12 = (DropDownList)GridView1.Rows[0].Cells[7].FindControl("DropDownList1");
            //var qwwe = ddlsize12.SelectedItem;
            //float grandtotalnew = 0;
            //int userid = Convert.ToInt32(Session["UserId"]);
            //var counts = _checkout.CheckOutCount(userid);
            //for (int i = 0; i < counts; i++)
            //{
            //    var lblcolorid = (Label)GridView1.Rows[i].Cells[7].FindControl("lblcolorid");
            //    var txtQuantity45 = (TextBox)GridView1.Rows[i].Cells[8].FindControl("txtQuantity");
            //    var lblnewtotal = (Label)GridView1.Rows[i].Cells[9].FindControl("lblnewtotal");
            //    var data = (from c in _cart.GetallData() where c.NewColorId == Convert.ToInt32(lblcolorid.Text) select c).SingleOrDefault();
            //    var ProductDatails = (from c in _product.GetallData() where c.ProductId == data.ProductId select c).SingleOrDefault();
            //    float total = ProductDatails.Price * Convert.ToInt32(txtQuantity45.Text);
            //    lblnewtotal.Text = total.ToString();
            //    grandtotalnew = (grandtotalnew + total);
            //    lbltotal.Text = grandtotalnew.ToString();

            //    var ddlsize = (DropDownList)GridView1.Rows[i].Cells[7].FindControl("DropDownList1");
            //    var sizee = _size.GetQuantity(Convert.ToInt32(lblcolorid.Text), Convert.ToInt32(ddlsize.SelectedItem.Text));
            //    var q = from c in li select c;
            //    if (q.Count() == 0)
            //    {
            //        li.Add(new ddllist
            //        {
            //            Colorid = Convert.ToInt32(ddlsize.SelectedItem.Value),
            //            Size = (ddlsize.SelectedItem).ToString()
            //        });
            //    }
            //    else
            //    {
            //        var details = (from c in li where c.Colorid==Convert.ToInt32(ddlsize.SelectedItem.Value) select c).SingleOrDefault();
            //        if (details != null)
            //        {
            //            li.Remove(details);
            //            li.Add(new ddllist
            //            {
            //                Colorid = Convert.ToInt32(ddlsize.SelectedItem.Value),
            //                Size = (ddlsize.SelectedItem).ToString()
            //            });
            //        }
            //        else
            //        {
            //            li.Add(new ddllist
            //            {
            //                Colorid = Convert.ToInt32(ddlsize.SelectedItem.Value),
            //                Size = (ddlsize.SelectedItem).ToString()
            //            });
            //        }
            //    }
            //    if (sizee < 0)
            //    {
            //        Response.Write("<script>alert('no item')</script>");
            //        GridView1.Rows[i].Visible = false;
            //    }
            //}
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         //  int index=  GridView1.SelectedRow.RowIndex;
          // 
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {

                HiddenField2.Value = (e.CommandArgument).ToString();
            }
            else if (e.CommandName == "UpdateItem")
            {
                int cartid = Convert.ToInt32(e.CommandArgument);
                var newSearch = _cart.Search(cartid);
               TextBox txtquantity= FormView1.FindControl("QuantityTextBox") as TextBox;
                DropDownList ddlsize=FormView1.FindControl("DropDownList2") as DropDownList;
                int quantity=Convert.ToInt32( txtquantity.Text);
                int size=Convert.ToInt32(ddlsize.SelectedItem.Text);
                    _cart.Update(new Cart
                {
                    CartId=cartid,
                    NewColorId=newSearch.NewColorId,
                    Date=newSearch.Date,
                    ColorId=newSearch.ColorId,
                    ProductId = newSearch.ProductId,
                    Quantity=quantity,
                    Size=size,
                    UserId=newSearch.UserId
                    
                });
                    FormView1.DataBind();
                    int userid = Convert.ToInt32(Session["UserId"]);
                    lbltotal.Text = _cart.CartTotal(userid).ToString();
                    

                FormView1.ChangeMode(FormViewMode.ReadOnly);

            }
        }

        protected void QuantityTextBox_TextChanged(object sender, EventArgs e)
        {

            TextBox txtqty = FormView1.FindControl("QuantityTextBox") as TextBox;
            
            Label lbltot = FormView1.FindControl("lbltotal") as Label;

            Label lblprice = FormView1.FindControl("lblprice") as Label;

            int price=Convert.ToInt32(lblprice.Text);
            int qty=Convert.ToInt32(txtqty.Text);
            lbltot.Text = (price * qty).ToString();

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/AddShipment.aspx");
        }

       
    }
}