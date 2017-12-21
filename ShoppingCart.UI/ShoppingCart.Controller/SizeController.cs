using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
namespace ShoppingCart.Controller
{
   public class SizeController
    {
       SizeTableAdapter _size = new SizeTableAdapter();
       public void insert(Size size)
       {
           _size.Insert( size.ProductId, size.ColourId, size.ProductSize,size.Quantity);
       }
       public IEnumerable<Size> GetallData()
       {
           List<Size> li = new List<Size>();
           var data = from c in _size.GetData() select c;
           foreach (var item in data)
           {
               li.Add(new Size
               {
                   SizeId = item.SizeId,
                   ProductId = item.ProductId,
                   ColourId = item.ColorId,
                   ProductSize = item.ProductSize
               });

           } return li;

       }

       public IEnumerable<Size> GetallSize(int colorid)
       {
           List<Size> li = new List<Size>();
           var data = from c in _size.GetData() where c.ColorId==colorid select c;
           foreach (var item in data)
           {
               li.Add(new Size
               {
                   SizeId = item.SizeId,
                   ProductId = item.ProductId,
                   ColourId = item.ColorId,
                   ProductSize = item.ProductSize,
                   
               });

           } return li;

       }

       public void updateSize(int sizeid, int size, int quzntity)
       {
           _size.UpdateSize(size, quzntity, sizeid);
       }

       public Size Search(int colorid)
       {
           var item = (from c in _size.GetData() where c.ColorId == colorid select c).SingleOrDefault();
           return new Size
           {
               SizeId = item.SizeId,
               ProductId = item.ProductId,
               ColourId = item.ColorId,
               ProductSize = item.ProductSize
           };
       }
       public Size SearchData(int colorid,int size)
       {
           var item = (from c in _size.GetData() where c.ColorId == colorid &&c.ProductSize==size select c).SingleOrDefault();
           return new Size
           {
               SizeId = item.SizeId,
               ProductId = item.ProductId,
               ColourId = item.ColorId,
               ProductSize = item.ProductSize
           };
       }
       public void updateQuantity(int sizeid, int quzntity)
       {
           _size.UpdateQuantity( quzntity, sizeid);
       }

       public int GetQuantity(int colorid,int size)
          
       {
           var item = (from c in _size.GetData() where c.ColorId == colorid && c.ProductSize==size select c.Quantity).SingleOrDefault();
           return item;
       }
      
    }
}
