using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;
using ShoppingCart.Model;
namespace ShoppingCart.Controller
{
   public class AccountController
    {
       AccountTableAdapter _account = new AccountTableAdapter();

       public void Insert(string username,string password,string role)
       {
           _account.Insert(username,password,role);
       }
       public void Update(Account account)
       {
           _account.Update(account.Username, account.Password, account.Role, account.AccountId);
       
       }
       public void Delete(Account account) 
       {
           _account.Delete(account.AccountId);

       }
       public IEnumerable<Account> GetallData()
       {
           List<Account> li = new List<Account>();
           var data = from c in _account.GetData() select c;
           foreach (var item in data)
           {
               li.Add(new Account
               {
                   AccountId=item.AccountId,
                   Username=item.Username,
                   Password=item.Password,
                   Role=item.Role


               });


           } return li;
       
       }
       public Account Search(int accountid)
       {
           var data = (from c in _account.GetData() where c.AccountId == accountid select c).SingleOrDefault();
           return new Account
           {
               AccountId = data.AccountId,
               Username = data.Username,
               Password = data.Password,
               Role = data.Role


           };
       
       }
       public Account getAccount(string Username,string Password)
       {
           var data = (from c in _account.GetData() where c.Username == Username && c.Password == Password select c).SingleOrDefault();
           return new Account
           {
               AccountId = data.AccountId,
               Username = data.Username,
               Password = data.Password,
               Role = data.Role


           };
       }
    }


}
