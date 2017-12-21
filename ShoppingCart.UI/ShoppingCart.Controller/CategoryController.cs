using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
    public class CategoryController
    {
        CategoryTableAdapter _category = new CategoryTableAdapter();
        public void Insert(string categoryname)
        {
            _category.Insert( categoryname);
        }
        public void Update(string categoryname,int categoryid)
        {
            _category.Update(categoryname, categoryid);
        }
        public void Delete(int categoryid)
        {
            _category.Delete(categoryid);
        }
        public IEnumerable<Category> GetallData()
        {

            //  Brand b=new Brand(1,"hjgf");
            List<Category> li = new List<Category>();
            var data = from c in _category.GetData() select c;
            foreach (var item in data)
            {
                //li.Add(b);
                li.Add(new Category
                {
                    CategoryId=item.CategoryId,
                    CategoryName=item.CategoryName
                });
            }
            return li;
        }

        public Category Search(int cartegoryid)
        {
            var item = (from c in _category.GetData() where c.CategoryId == cartegoryid select c).SingleOrDefault();
            return new Category
            {
                CategoryId = item.CategoryId,
                CategoryName = item.CategoryName
            };
        }
    }
}
