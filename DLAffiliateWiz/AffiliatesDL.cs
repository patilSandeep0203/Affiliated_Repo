using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DLPartner
{
    public class AffiliatesDL
    {
        private static string ConnStringPartner = ConfigurationSettings.AppSettings["ConnectionStringPartner"].ToString();
        //private static string ConnString = ConfigurationSettings.AppSettings["ConnectionString"].ToString();
       
       
        //This function gets the Master Rep Number for the Affiliate. CALLED BY AffiliatesBL.ReturnRepNumForSession
        public DataSet GetAffiliateRepNum(string AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliates = new SqlCommand("SP_GetRepNumAffiliate", Conn);
                cmdAffiliates.CommandType = CommandType.StoredProcedure;
                SqlParameter pAffiliateID = cmdAffiliates.Parameters.Add("@AffiliateID", SqlDbType.VarChar);

                pAffiliateID.Value = AffiliateID;

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdAffiliates;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "RepInfo");
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
        }//end GetAffiliateRepNum


        //This function gets the Affiliate information - CALLED BY AffiliatesBL.GetAffiliateAddPartner
        public DataSet GetAffiliateAddPartner(int AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_GetAffiliateAddPartner", Conn);
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
        }//end GetAffiliateAddPartner

        //This function gets the editable Affiliate information - CALLED BY AffiliatesBL.GetAffiliateWizInfo, 
        //AffiliatesBL.ReturnAffiliateContactName
        public DataSet GetAffiliateInfo(int AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_GetAffiliateEditInfo", Conn);
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


        //CALLED BY AffiliatesBL.InsertUpdateBankingInfo
        public bool InsertUpdateAffiliateBankingInfo(string AffiliateID, string BankName, string OtherBank, string Address, string ZipCode,
            string City, string State, string NameOnCheckingAcct, string AcctNum, string RoutingNum, string Phone)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdBankingInfo = new SqlCommand("sp_InsertUpdateBanking", Conn);
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

        //This function gets Affiliate banking information -- CALLED BY EDITINFO.ASPX
        public DataSet GetBankingInfo(string AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffiliate = new SqlCommand("sp_GetAffiliateBanking", Conn);
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
        }//end ReturnBankingInfo

        //This function Updates the Direct Deposit bit. CALLED BY AffiliatesBL.UpdateDirectDeposit
        public int UpdateDirectDeposit(string sqlQuery, string AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdAffilaitesInfo = new SqlCommand(sqlQuery, Conn);
                cmdAffilaitesInfo.Connection.Open();
                cmdAffilaitesInfo.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));
                int iRetVal = cmdAffilaitesInfo.ExecuteNonQuery();
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
        }//end UpdateDirectDeposit

        //This function updates Affilaite info in AffiliateWiz. CALLED BY AffiliatesBL.UpdateAffiliateWiz
        public bool UpdateAffiliateWizInfo(int AffiliateID, string FirstName, string LastName, 
            string PasswordPhrase, string DBA, string CheckPayable, string Email, string TaxID, string SSN, 
            string Address, string City, string State, string Region, string Zip, string Country, 
            string ShippingAddress, string ShippingCity, string ShippingState, string ShippingRegion, 
            string ShippingZip, string ShippingCountry, string Phone, string HomePhone, string MobilePhone,
            string Fax, string URL, string Comments, bool Notify, string LegalStatus, bool bDirectDeposit)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {                
                SqlCommand cmdUpdateAffiliate = new SqlCommand("sp_UpdateAffiliate_2DBs", Conn);
                cmdUpdateAffiliate.CommandType = CommandType.StoredProcedure;
                SqlParameter pAffiliateID = cmdUpdateAffiliate.Parameters.Add("@AffiliateID", SqlDbType.VarChar);
                SqlParameter pFirstName = cmdUpdateAffiliate.Parameters.Add("@FirstName", SqlDbType.VarChar);
                SqlParameter pLastName = cmdUpdateAffiliate.Parameters.Add("@LastName", SqlDbType.VarChar);
                SqlParameter pPasswordPhrase = cmdUpdateAffiliate.Parameters.Add("@PasswordPhrase", SqlDbType.VarChar);
                SqlParameter pDBA = cmdUpdateAffiliate.Parameters.Add("@DBA", SqlDbType.VarChar);
                SqlParameter pCheckPayable = cmdUpdateAffiliate.Parameters.Add("@CheckPayable", SqlDbType.VarChar);
                SqlParameter pEmail = cmdUpdateAffiliate.Parameters.Add("@Email", SqlDbType.VarChar);
                SqlParameter pTaxID = cmdUpdateAffiliate.Parameters.Add("@FederalTaxID", SqlDbType.VarChar);
                SqlParameter pSSN = cmdUpdateAffiliate.Parameters.Add("@SocialSecurity", SqlDbType.VarChar);
                SqlParameter pAddress = cmdUpdateAffiliate.Parameters.Add("@CompanyAddress", SqlDbType.VarChar);
                SqlParameter pCity = cmdUpdateAffiliate.Parameters.Add("@City", SqlDbType.VarChar);
                SqlParameter pState = cmdUpdateAffiliate.Parameters.Add("@State", SqlDbType.VarChar);
                //SqlParameter pRegion = cmdUpdateAffiliate.Parameters.Add("@Region", SqlDbType.VarChar);
                SqlParameter pZip = cmdUpdateAffiliate.Parameters.Add("@ZipCode", SqlDbType.VarChar);
                SqlParameter pCountry = cmdUpdateAffiliate.Parameters.Add("@Country", SqlDbType.VarChar);
                SqlParameter pShippingAddress = cmdUpdateAffiliate.Parameters.Add("@ShippingAddress", SqlDbType.VarChar);
                SqlParameter pShippingCity = cmdUpdateAffiliate.Parameters.Add("@ShippingCity", SqlDbType.VarChar);
                SqlParameter pShippingState = cmdUpdateAffiliate.Parameters.Add("@ShippingState", SqlDbType.VarChar);
                //SqlParameter pShippingRegion = cmdUpdateAffiliate.Parameters.Add("@ShippingRegion", SqlDbType.VarChar);
                SqlParameter pShippingZip = cmdUpdateAffiliate.Parameters.Add("@ShippingZipCode", SqlDbType.VarChar);
                SqlParameter pShippingCountry = cmdUpdateAffiliate.Parameters.Add("@ShippingCountry", SqlDbType.VarChar);
                SqlParameter pPhone = cmdUpdateAffiliate.Parameters.Add("@BusinessPhone", SqlDbType.VarChar);
                SqlParameter pHomePhone = cmdUpdateAffiliate.Parameters.Add("@HomePhone", SqlDbType.VarChar);
                SqlParameter pMobilePhone = cmdUpdateAffiliate.Parameters.Add("@MobilePhone", SqlDbType.VarChar);
                SqlParameter pFax = cmdUpdateAffiliate.Parameters.Add("@Fax", SqlDbType.VarChar);
                SqlParameter pURL = cmdUpdateAffiliate.Parameters.Add("@WebSiteURL", SqlDbType.VarChar);
                SqlParameter pComments = cmdUpdateAffiliate.Parameters.Add("@Comments", SqlDbType.VarChar);
                SqlParameter pNotify = cmdUpdateAffiliate.Parameters.Add("@Notify", SqlDbType.Bit);
                SqlParameter pLegalStatus = cmdUpdateAffiliate.Parameters.Add("@LegalStatus", SqlDbType.VarChar);
                SqlParameter pDirectDeposit = cmdUpdateAffiliate.Parameters.Add("@DirectDeposit", SqlDbType.Bit);

                pAffiliateID.Value = AffiliateID;
                pFirstName.Value = FirstName;
                pLastName.Value = LastName;
                pPasswordPhrase.Value = PasswordPhrase;
                pDBA.Value = DBA;
                pCheckPayable.Value = CheckPayable;
                pEmail.Value = Email;
                pTaxID.Value = TaxID;
                pSSN.Value = SSN;
                pAddress.Value = Address;
                pCity.Value = City;
                pState.Value = State;
                //pRegion.Value = Region;
                pZip.Value = Zip;
                pCountry.Value = Country;
                pShippingAddress.Value = ShippingAddress;
                pShippingCity.Value = ShippingCity;
                pShippingState.Value = ShippingState;
                //pShippingRegion.Value = ShippingRegion;
                pShippingZip.Value = ShippingZip;
                pShippingCountry.Value = ShippingCountry;
                pPhone.Value = Phone;
                pHomePhone.Value = HomePhone;
                pMobilePhone.Value = MobilePhone;
                pFax.Value = Fax;
                pURL.Value = URL;
                pComments.Value = Comments;
                pNotify.Value = Notify;
                pLegalStatus.Value = LegalStatus;
                pDirectDeposit.Value = bDirectDeposit;
                
                cmdUpdateAffiliate.Connection.Open();
                cmdUpdateAffiliate.ExecuteNonQuery();
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
        }//end function UpdateAffiliateWizInfo


        //This function returns noted information. CALLED BY AffiliatesBL.ReturnACTUserID
        public DataSet GetACTUserID(int AffiliateID)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmd= new SqlCommand("sp_GetActUserID", Conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection.Open();
                cmd.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "tblaff_Affiliates");
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
        }
        //end ReturnActUserID

        //CALLED BY commissions.aspx to display confirmation for Commissions
        public DataSet GetConfirmationComm(string AffiliateID, string Month)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {

                SqlCommand cmdRep = new SqlCommand("sp_GetConfirmationComm", Conn);
                cmdRep.CommandType = CommandType.StoredProcedure;
                cmdRep.Connection.Open();
                cmdRep.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));
                cmdRep.Parameters.Add(new SqlParameter("@Mon", Month));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdRep;
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
        }//end GetConfirmationComm

        //CALLED BY commissions.aspx to display confirmation for Commissions
        public DataSet GetConfirmationResd(string AffiliateID, string Month)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {

                SqlCommand cmdRep = new SqlCommand("sp_GetConfirmationResd", Conn);
                cmdRep.CommandType = CommandType.StoredProcedure;
                cmdRep.Connection.Open();
                cmdRep.Parameters.Add(new SqlParameter("@AffiliateID", AffiliateID));
                cmdRep.Parameters.Add(new SqlParameter("@Mon", Month));
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdRep;
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
        }//end GetConfirmationResd




        //This function gets the Rep List - CALLED By AffiliatesBL.GetAffiliateList
        public DataSet GetAffiliateList()
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdPartners = new SqlCommand("sp_GetAffiliateList", Conn);
                cmdPartners.Connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdPartners;
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return ds;
            }//end try
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function ReturnPartnerList

        //This function gets the Rep List - CALLED By AffiliatesBL.GetNonRepList
        public DataSet GetNonRepList(string MasterNum)
        {
            SqlConnection Conn = new SqlConnection(ConnStringPartner);
            try
            {
                SqlCommand cmdPartners = new SqlCommand("SP_GetNonRepList", Conn);
                cmdPartners.CommandType = CommandType.StoredProcedure;
                SqlParameter pMasterNum = cmdPartners.Parameters.Add("@MasterNum", SqlDbType.VarChar);
                pMasterNum.Value = MasterNum;
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmdPartners;
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return ds;
            }//end try
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
        }//end function ReturnPartnerList

    }   //END CLASS AFFILIATES
}
