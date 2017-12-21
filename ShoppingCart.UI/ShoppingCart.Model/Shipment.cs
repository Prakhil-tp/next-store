using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Shipment
    {
        private int _shipmentId;

        public int ShipmentId
        {
            get { return _shipmentId; }
            set { _shipmentId = value; }
        }
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _address;

        public string  Address
        {
            get { return _address; }
            set { _address = value; }
        }
        private string _place;

        public string Place
        {
            get { return _place; }
            set { _place = value; }
        }
        private string _district;

        public string District
        {
            get { return _district; }
            set { _district = value; }
        }
        private string _state;

        public string State 
        {
            get { return _state; }
            set { _state = value; }
        }
        private string _pincode;

        public string Pincode 
        {
            get { return _pincode; }
            set { _pincode = value; }
        }
        private string _mobile;

        public string Mobile 
        {
            get { return _mobile; }
            set { _mobile = value; }
        }
        private int _orderId;

        public int OrderId
        {
            get { return _orderId; }
            set { _orderId = value; }
        }
        public Shipment()
        {

        }
        public Shipment(int ShipmentId,int UserId,string Name,string Address,string Place,string District,string State,string Pincode,string Mobile,int OrderId)
        {
            _shipmentId = ShipmentId;
            _userId = UserId;
            _name = Name;
            _address = Address;
            _place = Place;
            _district = District;
            _state = State;
            _pincode = Pincode;
            _mobile = Mobile;
            _orderId = OrderId;
        }
        
        
        
    }
}
