using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
using System.IO;

namespace ShoppingCart.Controller
{
    public class ProductController
    {
        ProductTableAdapter _product = new ProductTableAdapter();
     
        ColourController _color = new ColourController();
        public void Insert(Product product)
        {
            _product.Insert(product.Name, product.BrandId, product.Description, product.Price, product.Size,
                product.Stock, product.CategoryId, product.Colour);        
        }
        public void Update(Product product)
        {
            _product.Update(product.Name, product.BrandId, product.Description, product.Price, product.Size,
                product.Stock, product.CategoryId, product.Colour, product.ProductId);

        }
        public void Delete(int productid)
        {
            _product.Delete(productid);
        }
        public IEnumerable<Product> GetallData()
        {
            List<Product> li = new List<Product>();
            var data = from c in _product.GetData() select c;
            foreach (var item in data)
            {
                var colordata=(from c in _color.GetallData() where c.Colourname==item.Colour && c.ProductId==item.ProductId select c).SingleOrDefault();

                li.Add(new Product
                {
                    BrandId=item.BrandId,
                    CategoryId=item.CaregoryId,
                    Colour=item.Colour,
                    Description=item.Description,
                    Name=item.ProductName,
                    Price=Convert.ToSingle( item.Price),
                    ProductId=item.ProductId,
                     Stock=item.Stock,
                     Size=item.Size,
                     MyColorId=colordata.ColourId
                });
            }
            return li;
        }
        public Product Search(int productid)
        {
            var item = (from c in _product.GetData() where c.ProductId == productid select c).SingleOrDefault();
            return new Product
            {
                BrandId = item.BrandId,
                CategoryId = item.CaregoryId,
                Colour = item.Colour,
                Description = item.Description,
                Name = item.ProductName,
                Price = Convert.ToSingle(item.Price),
                ProductId = item.ProductId,
                Stock = item.Stock,
                Size = item.Size
                
            };
        }
        public IEnumerable< Product> SearchByName(string productname)
        {
            List<Product> li = new List<Product>();
            var data = (from c in _product.GetData() where (c.ProductName.ToUpper()).Contains( productname) select c);
            foreach (var item in data)
            {
             li.Add(new Product
                {
                    BrandId=item.BrandId,
                    CategoryId=item.CaregoryId,
                    Colour=item.Colour,
                    Description=item.Description,
                    Name=item.ProductName,
                    Price=Convert.ToSingle( item.Price),
                    ProductId=item.ProductId,
                     Stock=item.Stock,
                     Size=item.Size,
                    
                });
            }
            return li;
        }
        public int GetMaxId()
        {
            int data = (from c in _product.GetData() select c.ProductId).Max();
            return data;
        }

        //public IEnumerable<ProductView> GetAllProduct(string path)
        //{
        //    List<ProductView> li = new List<ProductView>();
        //    var data = from c in _product.GetData() select c;
        //    foreach (var item in data)
        //    {
        //        var singleproduct=(from c in _color.GetallData() where c.ProductId==item.ProductId 
        //                           select c.
        //    }
        //    return li;
        //}
        public IEnumerable<Product> PriceSearch(int price1,int price2)
        {
            List<Product> li = new List<Product>();

            var data = from c in _product.GetData() where c.Price > price1 && c.Price < price2 select c;
            foreach (var item in data)
            {
                var colorDetails = (from c in _color.GetallData() where c.Colourname == item.Colour && c.ProductId == item.ProductId select c).SingleOrDefault();

                li.Add(new Product
                {
                    BrandId = item.BrandId,
                    CategoryId = item.CaregoryId,
                    Colour = item.Colour,
                    Description = item.Description,
                    Name = item.ProductName,
                    Price = Convert.ToSingle(item.Price),
                    ProductId = item.ProductId,
                    Stock = item.Stock,
                    Size = item.Size,
                    MyColorId=colorDetails.ColourId
                });
            }
            return li;
        }
        public IEnumerable<Product> GetColourProduct(string colour)
        {
           
            List<Product> li = new List<Product>();
            var data = from c in _product.GetData() where c.Colour == colour select c;
            foreach (var item in data)
            {
                li.Add(new Product
                {
                    BrandId = item.BrandId,
                    CategoryId = item.CaregoryId,
                    Colour = item.Colour,
                    Description = item.Description,
                    Name = item.ProductName,
                    Price = Convert.ToSingle(item.Price),
                    ProductId = item.ProductId,
                    Stock = item.Stock,
                    Size = item.Size
                });

            } return li;
        }
        public IEnumerable<Product> GetProductPriceColour(string colour,int price1,int price2)
        {
            List<Product> li = new List<Product>();
            var data = from c in _product.GetData() where c.Colour == colour && c.Price > price1 && c.Price < price2 select c;
            foreach (var item in data)
            {
                li.Add(
                    new Product
                    {
                        BrandId = item.BrandId,
                        CategoryId = item.CaregoryId,
                        Colour = item.Colour,
                        Description = item.Description,
                        Name = item.ProductName,
                        Price = Convert.ToSingle(item.Price),
                        ProductId = item.ProductId,
                        Stock = item.Stock,
                        Size = item.Size
                    });

            } return li;
        
        }
        public IEnumerable<Product> ProductNameSearch(string productName)
        {
            string pro = productName.ToUpper();
        string[] sr= pro.Split(' ');
            List<Product> li = new List<Product>();
            var data = from c in _product.GetData()  select c;
            
            //foreach (var item in data)
            //{
            foreach (var Text in sr)
            {
                var da = SearchByName(Text);
                foreach (var item in da)
                {


                    var p = item.Name.ToUpper();
                    if (p.Contains(Text))
                    {
                        var colorDetails = (from c in _color.GetallData() where c.Colourname == item.Colour && c.ProductId == item.ProductId select c).SingleOrDefault();
                        var listdata = from c in li select c;
                        if (listdata.Count() > 0)
                        {
                            foreach (var listItem in listdata)
                            {
                                if (listItem.MyColorId != colorDetails.ColourId)
                                {
                                    li.Add(
                                       new Product
                                       {


                                           Colour = item.Colour,

                                           Name = item.Name,
                                           Price = Convert.ToSingle(item.Price),

                                           MyColorId = colorDetails.ColourId
                                       });
                                }
                            }
                        }
                        else
                        {
                            li.Add(
                                           new Product
                                           {

                                               Colour = item.Colour,

                                               Name = item.Name,
                                               Price = Convert.ToSingle(item.Price),

                                               MyColorId = colorDetails.ColourId

                                           });
                        }

                    }

                }
            }
           // } 
            return li;
        
           
        }

        
    }
}
