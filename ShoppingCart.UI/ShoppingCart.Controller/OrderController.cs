using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
    public class OrderController
    {
        OrderTableAdapter _order = new OrderTableAdapter();
        public void Insert(Order order)
        {
            _order.Insert(order.OrderDate, order.UserId, order.TotalPrice, order.IsProcessedOrNot, order.DeliveryDate);
        }
        public void Update(Order order)
        {
            _order.Update(order.OrderDate, order.UserId, order.TotalPrice, order.IsProcessedOrNot, order.DeliveryDate, order.OrderId);
        }
        public void Delete(int orderid)
        {
            _order.Delete(orderid);
        }
        public IEnumerable<Order> GetallData()
        {
            List<Order> li = new List<Order>();
            var data = from c in _order.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new Order
                {
                   DeliveryDate=item.DeliveryDate,
                   IsProcessedOrNot=item.IsProcessOrNot,
                   OrderDate=item.OrderDate,
                   OrderId=item.OrderId,
                  TotalPrice=Convert.ToSingle( item.TotalPrice),
                  UserId=item.UserId

                });
            }
            return li;
        }
        public Order Search(int orderid)
        {
            var item = (from c in _order.GetData() where c.OrderId == orderid select c).SingleOrDefault();
            return new Order
            {
                DeliveryDate = item.DeliveryDate,
                IsProcessedOrNot = item.IsProcessOrNot,
                OrderDate = item.OrderDate,
                OrderId = item.OrderId,
                TotalPrice = Convert.ToSingle(item.TotalPrice),
                UserId = item.UserId
            };
        }
        public int GetMaxId()
        {
            int data = (from c in _order.GetData() select c.OrderId).Max();
            return data;
        }

        public IEnumerable<Order> GetallUserData(int Userid)
        {
            List<Order> li = new List<Order>();
            var data = from c in _order.GetData() where c.UserId == Userid select c;
            foreach (var item in data)
            {
                li.Add(new Order
                {
                    DeliveryDate = item.DeliveryDate,
                    IsProcessedOrNot = item.IsProcessOrNot,
                    OrderDate = item.OrderDate,
                    OrderId = item.OrderId,
                    TotalPrice = Convert.ToSingle(item.TotalPrice),
                    UserId = item.UserId

                });
            }
            return li;
        }
    }
}
