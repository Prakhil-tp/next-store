using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Brand
    {
        private int _brandId;

        public int BrandId
        {
            get { return _brandId; }
            set { _brandId = value; }
        }

        private string _brandName;

        public string BrandName
        {
            get { return _brandName; }
            set { _brandName = value; }
        }
        public Brand()
        { 
        
        }
        public Brand(int BrandId,string BrandName)
        {
            _brandId = BrandId;
            _brandName = BrandName;

        }
        
        
    }
}
