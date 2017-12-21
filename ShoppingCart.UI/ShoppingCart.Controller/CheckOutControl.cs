using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;

namespace ShoppingCart.Controller
{
   public class CheckOutControl
    {
       CartController _cart = new CartController();
       ProductController _product = new ProductController();
       public IEnumerable<CheckOut> GetAllData(int userid)
       {
           List<CheckOut> li = new List<CheckOut>();
           var data = from c in _cart.GetallData()
                      join a in _product.GetallData() on c.ProductId equals a.ProductId
                      where c.UserId == userid
                      select new
                          {
                              c.NewColorId,a.ProductId,a.Price,a.Name,c.CartId,c.Size,c.Quantity
                          };
           foreach (var item in data)
           {
               li.Add(new CheckOut
               {
                   ColorId=item.NewColorId,
                   Name=item.Name,
                   Price=item.Price,
                   Size=item.Size,
                   Total=Convert.ToInt32(item.Price*item.Quantity),
                   Quantity=item.Quantity,
                   ProductId=item.ProductId,
                   CartId=item.CartId
               });
           }
           return li;
       }

       public string GrandTotal(int userid)
       {
           int total = 0;
           var data = from c in _cart.GetallData()
                      join a in _product.GetallData() on c.ProductId equals a.ProductId
                      where c.UserId == userid
                      select new
                      {
                          c.NewColorId,
                          a.ProductId,
                          a.Price,
                          a.Name
                      };
           foreach (var item in data)
           {
               total += Convert.ToInt32(item.Price * 1);
           }
           return total.ToString();
       }

       public int  CheckOutCount(int userid)
       {
           List<CheckOut> li = new List<CheckOut>();
         
           var data = from c in _cart.GetallData()
                      join a in _product.GetallData() on c.ProductId equals a.ProductId
                      where c.UserId == userid
                      select new
                      {
                          c.NewColorId,
                          a.ProductId,
                          a.Price,
                          a.Name
                      };
           foreach (var item in data)
           {
               li.Add(new CheckOut
               {
                   ColorId = item.NewColorId,
                   Name = item.Name,
                   Price = item.Price,
                   Size = 5,
                   Total = Convert.ToInt32(item.Price * 1),
                   Quantity = 1,
                   ProductId = item.ProductId
               });
           }
           return li.Count;
       }
    }
}
