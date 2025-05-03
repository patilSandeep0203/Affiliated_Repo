using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DLAffiliateWiz
{
    public class AffiliatesWizDL
    {
        private static string ConnStringPartner = ConfigurationManager.AppSettings["ConnectionStringPartner"].ToString();
              
        //private static string ConnStringAff = ConfigurationSettings.AppSettings["ConnectionStringAff"].ToString();
        public bool CheckAffiliateExists(int AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            bool bExists = false;

            try
            {
                SqlCommand cmdAffiliates = new SqlCommand("sp_CheckAffiliateExists", Conn);
                cmdAffiliates.CommandType = CommandType.StoredProcedure;
                cmdAffiliates.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));                
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdAffiliates;
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    DataRow dr = ds.Tables[0].Rows[0];
                    bExists = Convert.ToBoolean(dr["AffiliateExists"]);
                }

                  
                return bExists;
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
        }//end CheckAffiliateExists


        //This function gets the Basic Affiliate Information
        public DataSet GetAffiliateInfoBasic(int AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_GetAffiliateInfoBasic", Conn);
                cmdAffiliate.CommandType = CommandType.StoredProcedure;
                SqlParameter pAffiliateID = cmdAffiliate.Parameters.Add("@AffiliateID", SqlDbType.VarChar);
                pAffiliateID.Value = AffiliateID;
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdAffiliate;
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
        }//end GetAffiliateInfo


        //This function Adds Affilaite info in AffiliateWiz and Token
        public string AddAffiliate(int AffiliateID, string FirstName, string LastName, string DBA,
            string CompanyName, string CheckPayable, string Email, string OtherReferral, string TaxSSN, string TaxID, string SSN, string Address,
            string City, string State, string Region, string Zip, string Country, string MailingAddress,
            string MailingCity, string MailingState, string MailingRegion, string MailingZip,
            string MailingCountry, string Phone, string HomePhone, string MobilePhone, string Fax, string URL,
            string Comments, bool Notify, string Category, string LegalStatus, bool bDirectDeposit)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_InsertAffiliate_2DBs", Conn);
                cmdAffiliate.CommandType = CommandType.StoredProcedure;
                SqlParameter pAffiliateID = cmdAffiliate.Parameters.Add("@ReferralID", SqlDbType.VarChar);
                SqlParameter pFirstName = cmdAffiliate.Parameters.Add("@FirstName", SqlDbType.VarChar);
                SqlParameter pLastName = cmdAffiliate.Parameters.Add("@LastName", SqlDbType.VarChar);
                SqlParameter pDBA = cmdAffiliate.Parameters.Add("@DBA", SqlDbType.VarChar);
                SqlParameter pCompanyName = cmdAffiliate.Parameters.Add("@CompanyName", SqlDbType.VarChar);
                SqlParameter pCheckPayable = cmdAffiliate.Parameters.Add("@CheckPayable", SqlDbType.VarChar);
                SqlParameter pEmail = cmdAffiliate.Parameters.Add("@Email", SqlDbType.VarChar);
                SqlParameter pOtherReferral = cmdAffiliate.Parameters.Add("@OtherReferral", SqlDbType.VarChar);
                SqlParameter pTaxSSN = cmdAffiliate.Parameters.Add("@TaxSSN", SqlDbType.VarChar);               
                SqlParameter pTaxID = cmdAffiliate.Parameters.Add("@FederalTaxID", SqlDbType.VarChar);
                SqlParameter pSSN = cmdAffiliate.Parameters.Add("@SocialSecurity", SqlDbType.VarChar);
                SqlParameter pAddress = cmdAffiliate.Parameters.Add("@CompanyAddress", SqlDbType.VarChar);
                SqlParameter pCity = cmdAffiliate.Parameters.Add("@City", SqlDbType.VarChar);
                SqlParameter pState = cmdAffiliate.Parameters.Add("@State", SqlDbType.VarChar);
                SqlParameter pRegion = cmdAffiliate.Parameters.Add("@Region", SqlDbType.VarChar);
                SqlParameter pZip = cmdAffiliate.Parameters.Add("@ZipCode", SqlDbType.VarChar);
                SqlParameter pCountry = cmdAffiliate.Parameters.Add("@Country", SqlDbType.VarChar);
                SqlParameter pMailingAddress = cmdAffiliate.Parameters.Add("@MailingAddress", SqlDbType.VarChar);
                SqlParameter pMailingCity = cmdAffiliate.Parameters.Add("@MailingCity", SqlDbType.VarChar);
                SqlParameter pMailingState = cmdAffiliate.Parameters.Add("@MailingState", SqlDbType.VarChar);
                SqlParameter pMailingRegion = cmdAffiliate.Parameters.Add("@MailingRegion", SqlDbType.VarChar);
                SqlParameter pMailingZip = cmdAffiliate.Parameters.Add("@MailingZipCode", SqlDbType.VarChar);
                SqlParameter pMailingCountry = cmdAffiliate.Parameters.Add("@MailingCountry", SqlDbType.VarChar);
                SqlParameter pPhone = cmdAffiliate.Parameters.Add("@BusinessPhone", SqlDbType.VarChar);
                SqlParameter pHomePhone = cmdAffiliate.Parameters.Add("@HomePhone", SqlDbType.VarChar);
                SqlParameter pMobilePhone = cmdAffiliate.Parameters.Add("@MobilePhone", SqlDbType.VarChar);
                SqlParameter pFax = cmdAffiliate.Parameters.Add("@Fax", SqlDbType.VarChar);
                SqlParameter pURL = cmdAffiliate.Parameters.Add("@WebSiteURL", SqlDbType.VarChar);
                SqlParameter pComments = cmdAffiliate.Parameters.Add("@Comments", SqlDbType.VarChar);
                SqlParameter pNotify = cmdAffiliate.Parameters.Add("@Notify", SqlDbType.Bit);
                SqlParameter pCategory = cmdAffiliate.Parameters.Add("@Category", SqlDbType.VarChar);
                SqlParameter pLegalStatus = cmdAffiliate.Parameters.Add("@LegalStatus", SqlDbType.VarChar);
                SqlParameter pDirectDeposit = cmdAffiliate.Parameters.Add("@DirectDeposit", SqlDbType.Bit);
                SqlParameter pNewAffiliateID = new SqlParameter("@AffiliateID", SqlDbType.VarChar);
                cmdAffiliate.Parameters.Add(pNewAffiliateID);
                pNewAffiliateID.Direction = ParameterDirection.ReturnValue;

                pAffiliateID.Value = AffiliateID;
                pFirstName.Value = FirstName;
                pLastName.Value = LastName;
                pCompanyName.Value = CompanyName;
                pDBA.Value = DBA;
                pCheckPayable.Value = CheckPayable;
                pEmail.Value = Email;
                pOtherReferral.Value = OtherReferral;
                pTaxSSN.Value = TaxSSN;
                pTaxID.Value = TaxID;
                pSSN.Value = SSN;
                pAddress.Value = Address;
                pCity.Value = City;
                pState.Value = State;
                pRegion.Value = Region;
                pZip.Value = Zip;
                pCountry.Value = Country;
                pMailingAddress.Value = MailingAddress;
                pMailingCity.Value = MailingCity;
                pMailingState.Value = MailingState;
                pMailingRegion.Value = MailingRegion;
                pMailingZip.Value = MailingZip;
                pMailingCountry.Value = MailingCountry;
                pPhone.Value = Phone;
                pHomePhone.Value = HomePhone;
                pMobilePhone.Value = MobilePhone;
                pFax.Value = Fax;
                pURL.Value = URL;
                pComments.Value = Comments;
                pNotify.Value = Notify;
                pCategory.Value = Category;
                pLegalStatus.Value = LegalStatus;
                pDirectDeposit.Value = bDirectDeposit;

                cmdAffiliate.Connection.Open();
                cmdAffiliate.ExecuteNonQuery();
                string NewAffiliateID = pNewAffiliateID.Value.ToString();
                return NewAffiliateID;
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
        }//end function AddAffiliate

       
        public DataSet GrabTargetURLByBannerID(int BannerID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliates = new SqlCommand("spafw_GrabTargetURLByBannerID", Conn);
                cmdAffiliates.CommandType = CommandType.StoredProcedure;
                cmdAffiliates.Parameters.Add(new SqlParameter("@BannerID", BannerID));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdAffiliates;
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
        }//end GrabTargetURLByBannerID

        //CALLED BY AffiliatesBL.InsertUpdateBankingInfo
        public bool InsertAffiliateBankingInfo(string AffiliateID, string BankName, string OtherBank, string Address, string ZipCode,
            string City, string State, string NameOnCheckingAcct, string AcctNum, string RoutingNum, string Phone)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdBankingInfo = new SqlCommand("sp_InsertBanking", Conn);
                cmdBankingInfo.CommandType = CommandType.StoredProcedure;
                SqlParameter pAddress = cmdBankingInfo.Parameters.Add("@BankAddress", SqlDbType.VarChar);
                SqlParameter pBankName = cmdBankingInfo.Parameters.Add("@BankName", SqlDbType.VarChar);
                SqlParameter pOtherBank = cmdBankingInfo.Parameters.Add("@OtherBank", SqlDbType.VarChar);
                SqlParameter pZipCode = cmdBankingInfo.Parameters.Add("@BankZip", SqlDbType.VarChar);
                SqlParameter pBankCity = cmdBankingInfo.Parameters.Add("@BankCity", SqlDbType.VarChar);
                SqlParameter pBankState = cmdBankingInfo.Parameters.Add("@BankState", SqlDbType.VarChar);
                SqlParameter pBankAcctNum = cmdBankingInfo.Parameters.Add("@BankAccountNumber", SqlDbType.VarChar);
                SqlParameter pBankPhone = cmdBankingInfo.Parameters.Add("@BankPhone", SqlDbType.Char);
                SqlParameter pBankRoutingNumber = cmdBankingInfo.Parameters.Add("@BankRoutingNumber", SqlDbType.VarChar);
                SqlParameter pNameonCheckingAcct = cmdBankingInfo.Parameters.Add("@NameonCheckingAcct", SqlDbType.VarChar);
                SqlParameter pAffiliateID = cmdBankingInfo.Parameters.Add("@AffiliateID", SqlDbType.Int);

                pAffiliateID.Value = AffiliateID;
                pAddress.Value = Address;
                pZipCode.Value = ZipCode;
                pBankName.Value = BankName;
                pOtherBank.Value = OtherBank;
                pBankCity.Value = City;
                pBankState.Value = State;
                pBankAcctNum.Value = AcctNum;
                pBankRoutingNumber.Value = RoutingNum;
                pNameonCheckingAcct.Value = NameOnCheckingAcct;
                pBankPhone.Value = Phone;

                cmdBankingInfo.Connection.Open();
                cmdBankingInfo.ExecuteNonQuery();
                Conn.Close();
                Conn.Dispose();
                return true;
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
        }//end function InsertUpdateAffiliateBankingInfo

        public DataSet GetGlossarybyAlphabet(string Letter)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdCOG = new SqlCommand("SP_GetGlossaryByAlphabet", Conn);
                cmdCOG.CommandType = CommandType.StoredProcedure;
                cmdCOG.Parameters.Add(new SqlParameter("@Letter", Letter));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdCOG;
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
        }//end GetProductsByAffiliateID

        public DataSet GetProductsByAffiliateID(int AffiliateID, string Category)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdCOG = new SqlCommand("SP_GetProductsByAffiliateID", Conn);
                cmdCOG.CommandType = CommandType.StoredProcedure;
                cmdCOG.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));
                cmdCOG.Parameters.Add(new SqlParameter("@Category", Category));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdCOG;
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
        }//end GetProductsByAffiliateID

        //CALLED BY GetProductCategories
        public DataSet GetProductCategories()
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdCOG = new SqlCommand("SP_GetProductCategories", Conn);
                cmdCOG.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdCOG;
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
        }//end GetProductCategories

    }//end class AffiliatesDL
}
