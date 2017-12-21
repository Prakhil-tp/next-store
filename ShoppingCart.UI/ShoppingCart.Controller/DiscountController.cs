using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
namespace ShoppingCart.Controller
{
    public class DiscountController
    {
        DiscountTableAdapter _discount = new DiscountTableAdapter();
        public void Insert(Discount discount)
        {
            _discount.Insert( discount.Name,discount.ValidityFrom, discount.DiscountPercentage,discount.Price,discount.ValidityTo);
        }
        public void Update(Discount discount)
        {
            _discount.Update(  discount.Name,discount.ValidityFrom, discount.DiscountPercentage,discount.Price,discount.ValidityTo, discount.DiscountId);
        }
        public void Delete(int discountid)
        {
            _discount.Delete(discountid);
        }
        public IEnumerable<Discount> GetallData()
        {
            List<Discount> li = new List<Discount>();
            var data = from c in _discount.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new Discount
                {
                    DiscountId=item.DiscountId,
                    DiscountPercentage=item.DiscountPercentage,
                    Name=item.Name,
                    ValidityTo=item.ValidityTo,
                    ValidityFrom=item.ValidityFrom,
                    Price=item.Price

                });
            }
            return li;
        }
        public Discount Search(int discountid)
        {
            var item = (from c in _discount.GetData() where c.DiscountId == discountid select c).SingleOrDefault();
            return new Discount
            {
                DiscountId = item.DiscountId,
                DiscountPercentage = item.DiscountPercentage,
                Name = item.Name,
                ValidityTo = item.ValidityTo,
                ValidityFrom = item.ValidityFrom,
                Price = item.Price
            };
        }
    }
}
