using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
    public class RegisteredUserController
    {
        
        RegisteredUserTableAdapter _registereduser = new RegisteredUserTableAdapter();
        public void Insert(RegisteredUser user)
        {
            _registereduser.Insert(user.Name, user.Address, user.Pincode, user.PhNo, user.Email, user.District, user.Locality,
                user.Password, user.Status, user.UserName,user.State);
        }
        public void Update(RegisteredUser user)
        {
            _registereduser.Update(user.Name, user.Address, user.Pincode, user.PhNo, user.Email, user.District, user.Locality,
                user.Password, user.Status, user.UserName,user.State,user.UserId);
        }
        public void Delete(int userid)
        {
            _registereduser.Delete(userid);
        }
        public IEnumerable<RegisteredUser> GetallData()
        {
            List<RegisteredUser> li = new List<RegisteredUser>();
            var data=from c in _registereduser.GetData() select c;
            foreach(var item in data)
            {
                li.Add(new RegisteredUser { 
                    UserId=item.UserId,
                    Name=item.Name,
                    Address=item.Address,
                    Pincode=item.Pincode,
                    PhNo=item.PhNo,
                    Email=item.EmailId,
                    District=item.District,
                    Locality=item.Locality,
                    Password=item.Password,
                    Status=item.Status,
                    UserName = item.Username,

                     });
            } return li;
        }
        public RegisteredUser search(int userid)
        {
            var data = (from c in _registereduser.GetData() where c.UserId == userid select c).SingleOrDefault();
            return new RegisteredUser {
            UserId=data.UserId,
            Name=data.Name,
            Address=data.Address,
            Pincode=data.Pincode,
            PhNo=data.PhNo,
            Email=data.EmailId,
            District=data.District,
            Locality=data.Locality,
            Password=data.Password,
            Status=data.Status,
            UserName=data.Username,
            State=data.State
            };
        
        }
        public int IdSearch(string Username,string password)
        {
            var id = (from c in _registereduser.GetData() where c.Username == Username&& c.Password==password select c.UserId).SingleOrDefault();
            return id;
           
        }
        
        
        

    }
}
