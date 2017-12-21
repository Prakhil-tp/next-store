using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
   public class ReviewController
    {
       ReviewTableAdapter _review = new ReviewTableAdapter();
       public void Insert(int userid,string comments,int productid,string Block)
       {
           _review.Insert(userid, comments, productid, Block);
       }
       //public void Update(int userid,string comments,int productid,string Block,)
       //{
       //    _review.Update(userid, comments, productid,Block);
       //}
       public void Delete(int reviewid)
       {
           _review.Delete(reviewid);
       }
       public IEnumerable<Review> GetallData()
       {
           List<Review> li = new List<Review>();
           var data = from c in _review.GetData() select c;
           foreach (var item in data)
           {
               li.Add(new Review
               {
                   ReviewId = item.ReviewId,
                   UserId = item.UserId,
                   Comments = item.Comments,
                   ProductId = item.ProductId
               });
           } return li;
       }
       public Review search(int searchid)
       {
           var data = (from c in _review.GetData() where c.ReviewId == searchid select c).SingleOrDefault();
           return new Review {ReviewId=data.ReviewId,
           UserId=data.UserId,
           Comments=data.Comments,
           ProductId=data.ProductId};
       }

       public IEnumerable<Review> GetallReview(int userid)
       {
           List<Review> li = new List<Review>();
           var data = from c in _review.GetData() where c.UserId==userid select c;
           foreach (var item in data)
           {
               li.Add(new Review
               {
                   ReviewId = item.ReviewId,
                   UserId = item.UserId,
                   Comments = item.Comments,
                   ProductId = item.ProductId,
                   Block=item.Block
               });
           } return li;
       }

       public void UpdateBlock(string block, int revieid)
       {
           _review.UpdateBlock(block, revieid);
       }

       public bool BlockedPerson(int userid)
       {
           var data = (from c in _review.GetData() where c.UserId == userid && c.Block == "block" select c);
           if (data.Count() > 0)
           {
               return true;
           }
           else
           {
               return false;
           }
       }

           
       
    }
}
