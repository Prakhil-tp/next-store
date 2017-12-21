using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
using System.IO;

namespace ShoppingCart.Controller
{
   public class ColourController
    {
       ColourTableAdapter _colour = new ColourTableAdapter();
       public void Insert(Colour colour)
       {
           
           _colour.Insert(colour.ProductId,colour.Colourname);

       }
       public IEnumerable<Colour> GetallData()
       {
           List<Colour> li = new List<Colour>();
           var data = from c in _colour.GetData() select c;
           foreach(var item in data)
           {
               li.Add(new Colour { ColourId = item.ColourId, Colourname = item.Colourname ,
               ProductId=item.ProductId});

           } return li;
       
       }

       public int GetMaxId()
       {
           var data = (from c in _colour.GetData() select c.ColourId).Max();
           return data;
       }

       public string GetPath(string path)
       {
           return path;
       }
       public IEnumerable<ColourImage> GetAllImagesFromColorImg(int colorid,string path)
       {
           List<ColourImage> li = new List<ColourImage>();
           DirectoryInfo directory = new DirectoryInfo(path);
           foreach (var item in directory.GetFiles())

           {
               if (item.Name.StartsWith(colorid.ToString()))
               {
                   li.Add(new ColourImage
                   {
                       Image = item.Name,
                       NextImage = item.FullName

                   });
               }
             
           }
           return li;
           
       }
       public int GetColourId(int ProductId,string ColourName)
       {
           var item = (from c in _colour.GetData() where c.ProductId == ProductId && c.Colourname == ColourName select c.ColourId).SingleOrDefault();
           return item; 
       }

       public Colour Search(int colorid)
       {
           var item = (from c in _colour.GetData() where c.ColourId == colorid select c).SingleOrDefault();
           return new Colour
           {
               ColourId = item.ColourId,
               Colourname = item.Colourname,
               ProductId = item.ProductId
           };
               
       }

    }
}
