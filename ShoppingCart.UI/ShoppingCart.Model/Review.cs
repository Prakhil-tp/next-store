using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Review
    {
        private int _reviewId;

        public int ReviewId
        {
            get { return _reviewId; }
            set { _reviewId = value; }
        }
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _comments;

        public string Comments
        {
            get { return _comments; }
            set { _comments = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _block;

        public string Block
        {
            get { return _block; }
            set { _block = value; }
        }
        
        public Review()
        {

        }
        public Review(int ReviewId,int UserId,string Comments,int ProductId,string Block)
        {
            _reviewId = ReviewId;
            _userId = UserId;
            _comments = Comments;
            _productId = ProductId;
            _block = Block;

        }
    }
}
