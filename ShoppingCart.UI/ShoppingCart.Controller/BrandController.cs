using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;



namespace ShoppingCart.Controller
{
   public  class BrandController
    {
       BrandTableAdapter _brand = new BrandTableAdapter();
       OrderTableAdapter o = new OrderTableAdapter();
       public void Insert(string brandname)
       {
           _brand.Insert(brandname);
       
       }
       public void Update(Brand brand)
       {
           _brand.Update(brand.BrandName, brand.BrandId);
       }
       public void Delete(int brandId)
       {
           _brand.Delete(brandId);
       }
       public IEnumerable<Brand> GetallData()
       {
          
         //  Brand b=new Brand(1,"hjgf");
           List<Brand> li = new List<Brand>();
           var data = from c in _brand.GetData() select c;
           foreach (var item in data)
           {
               //li.Add(b);
               li.Add(new Brand
               {
                   BrandId = item.BrandId,
                   BrandName = item.BrandName
               });
           }
           return li;
         }

       public Brand Search(int Brandid)
       {
           var data = (from c in _brand.GetData() where c.BrandId == Brandid select c).SingleOrDefault();
           return new Brand
           {
               BrandId=data.BrandId,
               BrandName=data.BrandName
           };
       }
       public int GetMaxId()
       {
           int data = (from c in _brand.GetData() select c.BrandId).Max();
           return data;
       }
       public bool BrandItemSearch(string Brandname)
       {
           var item = (from c in _brand.GetData() where c.BrandName == Brandname  select c).SingleOrDefault();
           if (item != null)
           {
               return false;
           }
           else
           {
               return true;
           }
       }

     
    }
}
