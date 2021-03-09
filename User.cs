using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace compuSciProj2020
{
    public class User
    {
        private string id;
        private string firstname;

        public User()
        {

        }

        public string ID
        {
            get
            {
                return this.id;
            }
            set
            {
                this.id = value;
            }
        }

        public string Firstname
        {
            get
            {
                return this.firstname;
            }
            set
            {
                this.firstname = value;
            }
        }
    }
}