using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
   public class CartController
    {
       CartTableAdapter _cart = new CartTableAdapter();
       ProductController _product = new ProductController();
           
       public void Insert(Cart cart)
       {
           _cart.Insert(cart.UserId, cart.ProductId, cart.Quantity, cart.Date,cart.ColorId,cart.NewColorId,cart.Size);
       }
       public void Update(Cart cart)
       {
           _cart.Update(cart.UserId, cart.ProductId, cart.Quantity, cart.Date,cart.ColorId,
           cart.NewColorId,cart.Size,cart.CartId);
       }
       public void Delete(int cartid)
       {
           _cart.Delete(cartid);
       }
       public IEnumerable<Cart> GetallData()
       {
           List<Cart> li = new List<Cart>();
           var data = from c in _cart.GetData() select c;
           foreach (var item in data)
           {
               li.Add(new Cart
               {
                  CartId=item.CartId,
                  Date=item.Date,
                  ProductId=item.ProductId,
                  Quantity=item.Quantity,
                  UserId=item.UserId,
                  ColorId=item.Color,
                  NewColorId=item.ColourId,
                  Size=item.Size
               });
           }
           return li;
       }
       public Cart Search(int cartid)
       {
           var item = (from c in _cart.GetData() where c.CartId == cartid select c).SingleOrDefault();
           return new Cart
           {
               CartId = item.CartId,
               Date = item.Date,
               ProductId = item.ProductId,
               Quantity = item.Quantity,
               UserId = item.UserId,
               NewColorId=item.ColourId,
               ColorId=item.Color
           };
       }
       public bool ProductSearch(int Productid , int UserId )
       {
           var data = (from c in _product.GetallData() where c.ProductId == Productid select c.Colour).SingleOrDefault();
           var item = (from c in _cart.GetData() where c.ProductId ==Productid &&
                           c.UserId==UserId  select c).SingleOrDefault();
           if (item != null)
           {
               return false;
           }
           else
           {
               return true;
           }
       }

       public bool ProductSearchByColor(int Productid, int UserId,string color)
       {
           var data = (from c in _product.GetallData() where c.ProductId == Productid select c.Colour).SingleOrDefault();
           var item = (from c in _cart.GetData()
                       where c.ProductId == Productid &&
                           c.UserId == UserId && c.Color == color
                       select c);
           if (item.Count() > 0)
           {
               return false;
           }
           else
           {
               return true;
           }
       }

       public int CartIdSearch(int ProductId, int UserId)
       {
           var item = (from c in _cart.GetData() where c.ProductId == ProductId && c.UserId == UserId select c.CartId).SingleOrDefault();
           return item;
       
       }
       public void UpdateSizeAndQuantity(int size, int quantity, int cartid)
       {
           _cart.UpdateSizeAndQuantity(quantity, size, cartid);
       }
       public double CartTotal(int userid)
       {
        return Convert.ToDouble(  _cart.CartTotal(userid));

       }

       public IEnumerable<Cart> GetCartData(int userid)
       {
           List<Cart> li = new List<Cart>();
           var data = from c in _cart.GetData() where c.UserId == userid select c;
           foreach (var item in data)
           {
               li.Add(new Cart
               {
                   CartId = item.CartId,
                   Date = item.Date,
                   ProductId = item.ProductId,
                   Quantity = item.Quantity,
                   UserId = item.UserId,
                   ColorId = item.Color,
                   NewColorId = item.ColourId
               });
           }
           return li;
       }


       public Cart SearchByColorid(int colorid)
       {
           var item = (from c in _cart.GetData() where c.ColourId == colorid select c).SingleOrDefault();
           return new Cart
           {
               CartId = item.CartId,
               Date = item.Date,
               ProductId = item.ProductId,
               Quantity = item.Quantity,
               UserId = item.UserId,
                NewColorId=item.ColourId
           };
       }
       public int getTotalCountOfCart(int userid)
       {
           var data = (from c in _cart.GetData() where c.UserId == userid select c.CartId).Count();
           return data;
       }
    }
}
