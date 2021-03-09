using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace compuSciProj2020
{
    public class watchService
    {
        OleDbConnection myConnection;
        public watchService()
        {
            string connectionString = Connect.GetConnectionString();
            myConnection = new OleDbConnection(connectionString);
        }

        public void InsertWatch(Watch w)
        {

            try
            {
                myConnection.Open();
                string sSql = "INSERT INTO watches(watchFeatures, cost, amount, type, picture, phoneNum, mailAdd) VALUES('" + w.Ftrs + "', " + w.Cst + ", " + w.Amnt + ", '" + w.Cat + "', '"+w.Pic+"', '"+ w.Phone +"', '" + w.MailAddrs + "')";
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                myCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection.Close();
            }

        }
    }
}