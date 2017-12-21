using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Category
    {
        private int _categoryId;

        public int CategoryId
        {
            get { return _categoryId; }
            set { _categoryId = value; }
        }
        private string _categoryName;

        public string CategoryName
        {
            get { return _categoryName; }
            set { _categoryName = value; }
        }
        public Category()
        {
                
        }
        public Category(int CategoryId,string CategoryName)
        {
            _categoryId = CategoryId;
            _categoryName = CategoryName;
        }
        
    }
}
