using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using DLAffiliateWiz;

namespace BLAffiliateWiz
{
    public class AffiliatesWizBL
    {
        //This function checks if the Affiliate ID exists - CALLED BY aw.aspx
        public bool CheckAffiliateExists(int AffiliateID)
        {
            bool bExists = false;
            AffiliatesWizDL Check = new AffiliatesWizDL();
            bExists = Check.CheckAffiliateExists(AffiliateID);
      
            return bExists;
        }//end function CheckAffiliateExists

        public DataSet GrabTargetURLByBannerID(int BannerID)
        {
            AffiliatesWizDL Banner = new AffiliatesWizDL();
            DataSet ds = Banner.GrabTargetURLByBannerID(BannerID);
            return ds;
        }//end function GrabTargetURLByBannerID

        public DataSet GetAffiliateInfoBasic(int AffiliateID)
        {
            AffiliatesWizDL AffWiz = new AffiliatesWizDL();
            DataSet ds = AffWiz.GetAffiliateInfoBasic(AffiliateID);
            return ds;
        }//end function

        public DataSet GetProductsByAffiliateID(int AffiliateID, string Category)
        {
            AffiliatesWizDL AffWiz = new AffiliatesWizDL();
            DataSet ds = AffWiz.GetProductsByAffiliateID(AffiliateID, Category);
            return ds;
        }//end function

        public DataSet GetGlossarybyAlphabet(string Letter)
        {
            AffiliatesWizDL AffWiz = new AffiliatesWizDL();
            DataSet ds = AffWiz.GetGlossarybyAlphabet(Letter);
            return ds;
        }//end function

        //This function gets product categories - CALLED BY equipment.aspx
        public DataSet GetProductCategories()
        {
            AffiliatesWizDL Cat = new AffiliatesWizDL();
            DataSet ds = Cat.GetProductCategories();
            return ds;
        }//end function GetProductCategories

        public string AddAffiliate(int AffiliateID, string UserName, string Password, string PasswordHint,
            string FirstName, string LastName, string DBA, string CompanyName, string CheckPayable,
            string Email, string OtherReferral, string TaxSSN, string TaxID, string SSN, string Address, string City, string State,
            string Region, string Zip, string Country, string ShippingAddress, string ShippingCity,
            string ShippingState, string ShippingRegion, string ShippingZip, string ShippingCountry,
            string Phone, string HomePhone, string MobilePhone, string Fax, string URL, string Comments,
            bool Notify, string Category, string LegalStatus, bool bBanking)
        {
            AffiliatesWizDL AffWiz = new AffiliatesWizDL();
            string NewAffiliateID = AffWiz.AddAffiliate(AffiliateID, FirstName, LastName, DBA,
            CompanyName, CheckPayable, Email, OtherReferral,TaxSSN, TaxID, SSN, Address, City, State, Region, Zip, Country,
            ShippingAddress, ShippingCity, ShippingState, ShippingRegion, ShippingZip, ShippingCountry,
            Phone, HomePhone, MobilePhone, Fax, URL, Comments, Notify, Category, LegalStatus, bBanking);


            //Add User Info to Token Database
            UsersDL User = new UsersDL();
            User.AddUserInfo(NewAffiliateID, UserName, Password, PasswordHint);
            return NewAffiliateID;
        }//end function AddAffiliate


        //This function Inserts Affiliate User Info 
        public void AddAffiliateUserInfo(string AffiliateID, string UserName, string Password, string PasswordHint)
        {
            UsersDL Aff = new UsersDL();
            Aff.AddUserInfo(AffiliateID, UserName, Password, PasswordHint);
        }

        //This function inserts/updates banking info for affiliate signups and edit profile
        //CALLED BY EditBanking.aspx
        public bool InsertBankingInfo(string AffiliateID, string BankName, string OtherBank, string Address, string ZipCode,
        string City, string State, string NameOnCheckingAcct, string AcctNum, string RoutingNum, string Phone)
        {
            AffiliatesWizDL BankingInfo = new AffiliatesWizDL();
            bool retVal = BankingInfo.InsertAffiliateBankingInfo(AffiliateID, BankName, OtherBank, Address, ZipCode, City, State,
                NameOnCheckingAcct, AcctNum, RoutingNum, Phone);
            return retVal;
        }


    }//end class AffiliatesBL
}
