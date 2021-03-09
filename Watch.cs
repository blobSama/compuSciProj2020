using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace compuSciProj2020
{
    public class Watch
    {
        private int amount, cost;
        private String cat, phoneN, featr, mAdd, picture;

        public string Cat
        {
            get
            {
                return this.cat;
            }
            set
            {
                this.cat = value;
            }
        }

        public string Pic
        {
            get
            {
                return this.picture;
            }
            set
            {
                this.picture = value;
            }
        }

        public string Phone
        {
            get
            {
                return this.phoneN;
            }
            set
            {
                this.phoneN = value;
            }
        }

        public string Ftrs
        {
            get
            {
                return this.featr;
            }
            set
            {
                this.featr = value;
            }
        }

        public string MailAddrs
        {
            get
            {
                return this.mAdd;
            }
            set
            {
                this.mAdd = value;
            }
        }

        public int Amnt
        {
            get
            {
                return this.amount;
            }
            set
            {
                this.amount = value;
            }
        }

        public int Cst
        {
            get
            {
                return this.cost;
            }
            set
            {
                this.cost = value;
            }
        }
    }
}