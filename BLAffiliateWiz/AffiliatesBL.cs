using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using DLPartner;

namespace BusinessLayer
{
    /// <summary>
    /// This class gets data from the Affiliates table
    /// </summary>
    public class AffiliatesBL
    {        
        public int ReturnPID(int AffiliateID)
        {
            int PID = 0;
            AffiliatesDL Affiliate = new AffiliatesDL();
            DataSet dsPID = Affiliate.GetAffiliateInfo(AffiliateID);
            if (dsPID.Tables[0].Rows.Count > 0)
            {
                DataRow drPID = dsPID.Tables["Affiliates"].Rows[0];
                if (drPID["PackageID"].ToString() != "")
                    PID = Convert.ToInt32(drPID["PackageID"]);
            }
            return PID;
        }//end function GetPID

        //CALLED BY Login.aspx
        public string ReturnContactName(int AffiliateID)
        {
            string Contact = string.Empty;
            AffiliatesDL Aff = new AffiliatesDL();
            DataSet ds = Aff.GetAffiliateInfo(AffiliateID);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                Contact = dr["FirstName"].ToString().Trim() + " " + dr["LastName"].ToString().Trim();
            }
            return Contact;
        }//end function GetAffiliateContactName

        public string ReturnEmail(int AffiliateID)
        {
            string Email = "support@ecenow.com";

            AffiliatesDL Affiliate = new AffiliatesDL();
            DataSet ds = Affiliate.GetAffiliateInfo(AffiliateID);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                Email = dr["Email"].ToString().Trim();
            }
            return Email;
        }

        //This function gets Confirmation Info based on affiliate id and month - CALLED by Residuals.aspx
        public DataSet GetConfirmationComm(string AffiliateID, string Month)
        {
            AffiliatesDL CCode = new AffiliatesDL();
            DataSet ds = CCode.GetConfirmationComm(AffiliateID, Month);
            return ds;
        }//end function GetResdConfirmationComm     

        //This function gets Confirmation Info based on affiliate id and month - CALLED by Residuals.aspx
        public DataSet GetConfirmationResd(string AffiliateID, string Month)
        {
            AffiliatesDL CCode = new AffiliatesDL();
            DataSet ds = CCode.GetConfirmationResd(AffiliateID, Month);
            return ds;
        }//end function GetResdConfirmationResd

        //CALLED BY VerifyAppLogin.aspx
        public string CreateOnlineAppToken(string appName, string loginID, int appID)
        {
            UsersDL User = new UsersDL();
            string strToken = User.CreateOnlineAppToken(appName, loginID, appID);            
            return strToken;
        }

        //CALLED BY Login.aspx
        public DataSet VerifyToken(string strToken)
        {
            UsersDL User = new UsersDL();
            DataSet ds = User.VerifyLoginToken(strToken);
            return ds;
        }

        //CALLED BY Login.aspx
        public string ReturnRepNumForSession(string AffiliateID)
        {
            string MasterNum = "";
            //string strQuery = "Select * from VW_RepInfoExp where AffiliateID = @AffiliateID";
            AffiliatesDL RepNumber = new AffiliatesDL();
            DataSet ds = RepNumber.GetAffiliateRepNum(AffiliateID);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                MasterNum = dr["MasterNum"].ToString().Trim();
            }//end if count not 0
            return MasterNum;
        }//end GetRepNumForSession

        //Called by ChangePWD.aspx, AddPartner.aspx, EditInfo.aspx
        public DataSet GetAffiliateInfo(int AffiliateID)
        {
            AffiliatesDL AffiliateLogin = new AffiliatesDL();
            DataSet dsAffiliate = AffiliateLogin.GetAffiliateInfo(AffiliateID);
            return dsAffiliate;
        }

        //Called by AddPartner.aspx
        public DataSet GetAffiliateAddPartner(int AffiliateID)
        {
            AffiliatesDL AffiliateLogin = new AffiliatesDL();
            DataSet dsAffiliate = AffiliateLogin.GetAffiliateAddPartner(AffiliateID);
            return dsAffiliate;
        }


        //This function inserts/updates banking info for affiliate signups and edit profile
        //CALLED BY EditBanking.aspx
        public bool InsertUpdateBankingInfo(string AffiliateID, string BankName, string OtherBank, string Address, string ZipCode,
        string City, string State, string NameOnCheckingAcct, string AcctNum, string RoutingNum, string Phone)
        {
            AffiliatesDL BankingInfo = new AffiliatesDL();
            bool retVal = BankingInfo.InsertUpdateAffiliateBankingInfo(AffiliateID, BankName, OtherBank, Address, ZipCode, City, State,
                NameOnCheckingAcct, AcctNum, RoutingNum, Phone);
            return retVal;
        }

        //CALLED BY EditInfo.aspx
        public bool UpdateAffiliateWiz(int AffiliateID, string FirstName, string LastName, string PasswordPhrase, 
            string DBA, string CheckPayable, string Email, string TaxID, string SSN, string Address, 
            string City, string State, string Region, string Zip, string Country, string ShippingAddress, 
            string ShippingCity, string ShippingState, string ShippingRegion, string ShippingZip, 
            string ShippingCountry, string Phone, string HomePhone, string MobilePhone ,string Fax, string URL,  string Comments, bool Notify, 
            string LegalStatus, bool bDirectDeposit)
        {
            AffiliatesDL UpdateAffiliate = new AffiliatesDL();
            bool retVal = UpdateAffiliate.UpdateAffiliateWizInfo(AffiliateID, FirstName, LastName, PasswordPhrase, 
                DBA, CheckPayable, Email, TaxID, SSN, Address, City, State, Region, Zip, Country, ShippingAddress, 
                ShippingCity, ShippingState, ShippingRegion, ShippingZip, ShippingCountry, Phone, HomePhone, 
                MobilePhone, Fax, URL, Comments, Notify, LegalStatus, bDirectDeposit);

            return retVal;
        }

        //This function returns the ACTUserID for an Affiliate. CALLED BY Edit.aspx, SendReminder.aspx
        public string ReturnACTUserID(int AffiliateID)
        {
            //If Act User ID is not found, set it to ACT System User
            string strActUserID = "{11111111-1111-1111-1111-111111111111}";
            AffiliatesDL ActUserID = new AffiliatesDL();
            DataSet ds = ActUserID.GetACTUserID(AffiliateID);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                strActUserID = dr["ActUserID"].ToString().Trim();
            }//end if count not 0
            return strActUserID;
        }

        //This function returns rep list - CALLED BY CommUpdate.aspx
        public DataSet GetAffiliateList()
        {
            AffiliatesDL Aff = new AffiliatesDL();
            DataSet ds = Aff.GetAffiliateList();
            return ds;
        }

        //This function returns rep list - CALLED BY AddPartner.aspx
        public DataSet GetNonRepList(string MasterNum)
        {
            AffiliatesDL Aff = new AffiliatesDL();
            DataSet ds = Aff.GetNonRepList(MasterNum);
            return ds;
        }

        //This function gets banking info for affiliates. CALLED BY EditInfo.aspx
        public DataSet GetBankingInfo(string AffiliateID)
        {
            AffiliatesDL Aff = new AffiliatesDL();
            DataSet ds = Aff.GetBankingInfo(AffiliateID);
            return ds;
        }//end function ReturnBankingInfo

        //This function updates the direct deposit bit. CALLED BY EditBanking.aspx
        public int UpdateDirectDeposit(string AffiliateID)
        {
            string strQuery = "Update tblaff_Affiliates Set DirectDeposit = 1 Where AffiliateID = @AffiliateID";
            AffiliatesDL Aff = new AffiliatesDL();
            int iRetVal = Aff.UpdateDirectDeposit(strQuery, AffiliateID);
            return iRetVal;
        }//end function UpdateDirectDeposit
    
    }//end class AffiliatesBL
}
