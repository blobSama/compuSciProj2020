using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace compuSciProj2020
{
    public class userService
    {
        OleDbConnection myConnection;
        public userService()
        {
            string connectionString = Connect.GetConnectionString();
            myConnection = new OleDbConnection(connectionString);
        }

        public void InsertUser(User u)
        {

            try
            {
                myConnection.Open();
                string sSql = "INSERT INTO Users(ID, firstName) VALUES('" + u.ID + "', '" + u.Firstname + "')";
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