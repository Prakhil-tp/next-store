using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{

    public class WishlistController
    {
        WishlistTableAdapter _wishlist = new WishlistTableAdapter();
        ProductController _product = new ProductController();
        public void Insert(Wishlist wishlist) 
        {
            _wishlist.Insert(wishlist.UserId, wishlist.ProductId,wishlist.ColorId);
        
        }
        public void Update(Wishlist wishlist)
        {
            _wishlist.Update(wishlist.UserId,wishlist.ProductId,wishlist.ColorId,wishlist.WishlistId);
        }
        public void Delete(int WishlistId)
        {
            _wishlist.Delete(WishlistId);
        }
        public IEnumerable<Wishlist> GetallData()
        {
            List<Wishlist> li = new List<Wishlist>();
            var data = from c in _wishlist.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new Wishlist { ProductId= item.ProductId,UserId=item.UserId,
                    ColorId=item.ColorId,
                    WishlistId=item.WishlistId
                });



            } return li;
        
        }
        public Wishlist Search(int wishlistId)
        {
            var data = (from c in _wishlist.GetData() where c.WishlistId == wishlistId select c).SingleOrDefault();
            return new Wishlist
            {
                WishlistId = data.WishlistId,
                ProductId = data.ProductId,
                UserId = data.UserId,
                ColorId=data.ColorId
            };

        
        }
        public bool ProductSearch(int Productid, int UserId,int colorid)
        {
            var item = (from c in _wishlist.GetData() where c.ProductId == Productid && c.UserId == UserId && c.ColorId==colorid select c).SingleOrDefault();
            if (item != null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public int WishlistIdSearch(int Productid, int UserId)
        {
            var item = (from c in _wishlist.GetData() where c.ProductId == Productid && c.UserId == UserId select c.WishlistId).SingleOrDefault();
            return item;
        }

        public IEnumerable<WishlistView> GetWishlistViewData()
        {
            List<WishlistView> li = new List<WishlistView>();
            //var data = from c in _wishlist.GetData() select c;
            //var data1 = from c in _product.GetallData() select c;
            //foreach (var item in data)
            //{
            //    foreach (var item1 in data1)
            //    {
            //        var details= (from c in data1 where c.ProductId== item.ProductId select c).SingleOrDefault();
            //        var da = (from c in li where c.ProductId == item1.ProductId select c).SingleOrDefault();
            //        if(da
            //        li.Add(new WishlistView
            //        {
            //            ProductId = details.ProductId,
            //            ProductName=details.Name,
            //            ProductPrice=details.Price,
            //            Size=details.Size,
            //            WishlistId=item.WishlistId,
            //            ColorId=item.ColorId
            //        });

            //    }
                
            //} 
            var data = (from c in _wishlist.GetData() join a in _product.GetallData() on c.ProductId equals a.ProductId select new { a.ProductId,a.Name,a.Price,c.ColorId,c.WishlistId,a.Size});
            foreach (var item in data)
            {
                li.Add(new WishlistView
                {
                    ColorId=item.ColorId,
                    ProductId=item.ProductId,
                    ProductPrice=item.Price,
                    Size=item.Size,
                    WishlistId=item.WishlistId,
                    ProductName=item.Name

                });
            }
            return li;
        
        }
        public int getTotalCountOfCart(int userid)
        {
            var data = (from c in _wishlist.GetData() where c.UserId == userid select c.WishlistId).Count();
            return data;
        }

    }
}
