﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace compuSciProj2020
{
    public class validation
    {
        public static bool CheckId(string id)//check user id
        {
            int[] id_12_digits = { 1, 2, 1, 2, 1, 2, 1, 2, 1 };
            int count = 0;
            if (id == null) { return false; }
            id = id.PadLeft(9, '0');
            for (int i = 0; i < 9; i++)
            {
                int num = Int32.Parse(id.Substring(i, 1)) * id_12_digits[i];
                if (num > 9) { num = (num / 10) + (num % 10); }
                count += num;
            }
            return (count % 10 == 0);
        }

        public static bool CheckFName(string fname)//checks if fname longer than 2 and is letters
        {
            string str = "0.1234546+789/*-~!@#$%^&*()_-={}[]'|:;?\'<>";
            for (int i = 0; i < str.Length; i++)
            {
                if (fname.IndexOf(str[i]) != -1)
                    return false;
            }
            return fname.Length >= 2;
        }

        public static bool CheckAll(Watch w1)
        {
            bool ok = true;
            if (!CheckCatg(w1.Cat))
            {
                ok = false;
            }
            if (!CheckAmnt(w1.Amnt))
            {
                ok = false;
            }
            if (!CheckCost(w1.Cst))
            {
                ok = false;
            }
            if (!CheckPhoneNum(w1.Phone))
            {
                ok = false;
            }
            if (!CheckEmail(w1.MailAddrs))
            {
                ok = false;
            }
            if (!CheckPic(w1.Pic))
            {
                ok = false;
            }
            return ok;
        }

        public static bool CheckCatg(String cat)
        {
            if (!cat.Equals("Choose..."))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckAmnt(int amnt)
        {
            if (amnt >= 0 && amnt <= 1000)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckCost(int cost)
        {
            if (cost >= 1 && cost <= 1500)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckPhoneNum(string number)
        {//checks if phone ok
            string str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM!@#$%^&*()[]{}:?<>";
            if (number.Length != 10)
                return false;
            for (int i = 0; i < number.Length; i++)
            {
                for (int j = 0; j < str.Length; j++)
                {
                    if (number[i].Equals(str[j]))
                        return false;
                }
            }
            return true;
        }

        public static bool CheckEmail(string email)//checks if mail ok 
        {
            try
            {
                var adder = new System.Net.Mail.MailAddress(email);
                return (adder.Address == email);
            }
            catch
            {
                return false;
            }
        }

        public static bool CheckPic(string url)//checks if url is jpg
        {
            if (url.EndsWith("jpg"))
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