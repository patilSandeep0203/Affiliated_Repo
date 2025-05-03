using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DLAffiliateWiz
{
    public class ReportsDL
    {
        private static string ConnStringPartner = ConfigurationManager.AppSettings["ConnectionStringPartner"].ToString();
        //private static string ConnStringAff = ConfigurationSettings.AppSettings["ConnectionStringAff"].ToString();
 
        public int InsertFreeReport(string ReferralID, string Name, string Email)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdReports = new SqlCommand("SP_InsertFreeReport", Conn);
                cmdReports.CommandType = CommandType.StoredProcedure;
                cmdReports.Parameters.Add(new SqlParameter("@ReferralID", ReferralID));
                cmdReports.Parameters.Add(new SqlParameter("@Contact", Name));
                cmdReports.Parameters.Add(new SqlParameter("@Email", Email));
                cmdReports.Connection.Open();
                int iRetVal = cmdReports.ExecuteNonQuery();
                return iRetVal;
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
        }//end InsertFreeReport

        public int InsertFreeConsult(string ReferralID, string FirstName, string LastName , string Email, string CountryCode, string HomePhone, string WorkPhone)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdReports = new SqlCommand("SP_InsertFreeConsult", Conn);
                cmdReports.CommandType = CommandType.StoredProcedure;
                cmdReports.Parameters.Add(new SqlParameter("@ReferralID", ReferralID));
                cmdReports.Parameters.Add(new SqlParameter("@FirstName", FirstName));
                cmdReports.Parameters.Add(new SqlParameter("@LastName", LastName));
                cmdReports.Parameters.Add(new SqlParameter("@Email", Email));
                cmdReports.Parameters.Add(new SqlParameter("@CountryCode", CountryCode));
                cmdReports.Parameters.Add(new SqlParameter("@HomePhone", HomePhone));
                cmdReports.Parameters.Add(new SqlParameter("@WorkPhone", WorkPhone));
                cmdReports.Connection.Open();
                int iRetVal = cmdReports.ExecuteNonQuery();
                return iRetVal;
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
        }//end InsertFreeConsult

        public int InsertFreeApply(string ReferralID, string FirstName, string LastName, string Email,
            string CountryCodeHome, string HomePhone, string WorkPhone, string MobilePhone, string Company, string Address, 
            string City, string State, string Region, string Zip, string Country, string URL, string Cart, 
            string Comments)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdReports = new SqlCommand("SP_InsertFreeApply", Conn);
                cmdReports.CommandType = CommandType.StoredProcedure;
                cmdReports.Parameters.Add(new SqlParameter("@ReferralID", ReferralID));
                cmdReports.Parameters.Add(new SqlParameter("@FirstName", FirstName));
                cmdReports.Parameters.Add(new SqlParameter("@LastName", LastName));
                cmdReports.Parameters.Add(new SqlParameter("@CountryCodeHome", CountryCodeHome));
                cmdReports.Parameters.Add(new SqlParameter("@HomePhone", HomePhone));
                cmdReports.Parameters.Add(new SqlParameter("@MobilePhone", MobilePhone));
                cmdReports.Parameters.Add(new SqlParameter("@Phone", WorkPhone));
                cmdReports.Parameters.Add(new SqlParameter("@Email", Email));
                cmdReports.Parameters.Add(new SqlParameter("@Company", Company));
                cmdReports.Parameters.Add(new SqlParameter("@Address", Address));
                cmdReports.Parameters.Add(new SqlParameter("@City", City));
                cmdReports.Parameters.Add(new SqlParameter("@State", State));
                cmdReports.Parameters.Add(new SqlParameter("@Region", Region));
                cmdReports.Parameters.Add(new SqlParameter("@Zip", Zip));
                cmdReports.Parameters.Add(new SqlParameter("@Country", Country));
                cmdReports.Parameters.Add(new SqlParameter("@URL", URL));
                cmdReports.Parameters.Add(new SqlParameter("@Cart", Cart));
                cmdReports.Parameters.Add(new SqlParameter("@Comments", Comments));
                cmdReports.Connection.Open();
                int iRetVal = cmdReports.ExecuteNonQuery();
                return iRetVal;
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
        }//end InsertFreeApply

        public DataSet CheckEmailExists(string Email)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            
            try
            {
                SqlCommand cmdReports = new SqlCommand("sp_CheckEmailExistsLeads", Conn);
                cmdReports.CommandType = CommandType.StoredProcedure;
                cmdReports.Connection.Open();
                cmdReports.Parameters.Add(new SqlParameter("@Email", Email));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdReports;
                DataSet ds = new DataSet();
                adapter.Fill(ds);
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
        }//end function CheckEmailExists
    }//end class ReportsDL
}
