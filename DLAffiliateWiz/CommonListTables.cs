using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
//using System.Web.Configuration;

namespace DLAffiliateWiz
{
    public class CommonListTables
    {
        private static string ConnString = ConfigurationManager.AppSettings["ConnectionStringPartner"].ToString();
        private static string ACTConnString = ConfigurationManager.AppSettings["ConnectionStringACT"].ToString();

        public DataSet GetList(string ListName)
        {
            SqlConnection Conn = new SqlConnection(ACTConnString);
            try
            {
                SqlCommand cmdCommonInfo = new SqlCommand("sp_GetList", Conn);
                cmdCommonInfo.CommandType = CommandType.StoredProcedure;
                cmdCommonInfo.Connection.Open();
                cmdCommonInfo.Parameters.Add(new SqlParameter("@ListName", ListName));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdCommonInfo;
                DataSet ds = new DataSet();
                adapter.Fill(ds, ListName);
                Conn.Close();
                Conn.Dispose();
                return ds;
            }
            catch (SqlException sqlerr)
            {
                throw sqlerr;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function GetCommonInfo

        public DataSet GetCommonLists(string TableName)
        {
            SqlConnection Conn = new SqlConnection(ConnString);
            try
            {
                SqlCommand cmdCommonInfo = new SqlCommand("sp_GetCommonListData", Conn);
                cmdCommonInfo.CommandType = CommandType.StoredProcedure;
                cmdCommonInfo.Connection.Open();
                cmdCommonInfo.Parameters.Add(new SqlParameter("@TableName", TableName));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdCommonInfo;
                DataSet ds = new DataSet();
                adapter.Fill(ds, TableName);
                Conn.Close();
                Conn.Dispose();
                return ds;
            }
            catch (SqlException sqlerr)
            {
                throw sqlerr;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function GetCommonInfo

        public DataSet GetReferralList()
        {
            SqlConnection Conn = new SqlConnection(ConnString);
            try
            {
                SqlCommand cmd = new SqlCommand("SP_GetReferralList", Conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "tblaff_affiliates");
                Conn.Close();
                Conn.Dispose();
                return ds;
            }
            catch (SqlException sqlerr)
            {
                throw sqlerr;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function GetCommonInfo



     
    }//end class COMMONLISTTABLES
}
