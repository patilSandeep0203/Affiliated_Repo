using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DLAffiliateWiz
{
    public class UsersDL
    {
        private static string ConnStringToken = ConfigurationManager.AppSettings["eSecurityConnectString"].ToString();

        //This function Adds Affilaite User to the Token Database
        public int AddUserInfo(string AffiliateID, string UserName, string Password, string PasswordHint)
        {
            SqlConnection Conn = new SqlConnection(ConnStringToken);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_InsertUser", Conn);
                cmdAffiliate.CommandType = CommandType.StoredProcedure;
                SqlParameter pAffiliateID = cmdAffiliate.Parameters.Add("@AffiliateID", SqlDbType.VarChar);
                SqlParameter pUserName = cmdAffiliate.Parameters.Add("@UserName", SqlDbType.VarChar);
                SqlParameter pPassword = cmdAffiliate.Parameters.Add("@Password", SqlDbType.VarChar);
                SqlParameter pPasswordHint = cmdAffiliate.Parameters.Add("@PasswordHint", SqlDbType.VarChar);

                pAffiliateID.Value = AffiliateID;
                pUserName.Value = UserName;
                pPassword.Value = Password;
                pPasswordHint.Value = PasswordHint;

                cmdAffiliate.Connection.Open();
                int iRetVal = cmdAffiliate.ExecuteNonQuery();
                return iRetVal;
            }//end try
            catch (SqlException err)
            {
                throw err;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function AddAffiliateUserInfo



           }//end class ManageUsersDL
}
