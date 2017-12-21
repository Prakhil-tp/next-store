using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
namespace ShoppingCart.Controller
{
    public class ShipmentController
    {
        ShipmentTableAdapter _shipment = new ShipmentTableAdapter();
        CartTableAdapter _cart = new CartTableAdapter();
      
        public void Insert(int userid,string name,string address,string place,string district,string state,string pincode,string mobile,int orderid)
        {
            _shipment.Insert(userid, name, address, place, district, state, pincode, mobile, orderid);
        }
        public void Update(int userid,string name,string address,string place,string district,string state,string pincode,string mobile,int orderid,int shipmentid)
        {
            _shipment.Update(userid, name, address, place, district, state, pincode, mobile, orderid, shipmentid);
        }
        public void Delete(int shipmentid)
        {
            _shipment.Delete(shipmentid);
        }
        public IEnumerable<Shipment> GetallData() 
        {
            List<Shipment> li = new List<Shipment>();
            var data = from c in _shipment.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new Shipment {
                ShipmentId=item.ShipmentId,
                UserId=item.UserId,
                Name=item.Name,
                Address=item.Address,
                Place=item.Place,
                District=item.District,
                State=item.State,
                Pincode=item.Pincode,
                Mobile=item.Mobile,
                OrderId=item.OrderId
                });

            } return li;

        }
     
    }
}
