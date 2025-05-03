using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using DLAffiliateWiz;

namespace BLAffiliateWiz
{

    public class ReportsBL
    {
        public int InsertFreeReport(string ReferralID, string Name, string Email)
        {
            ReportsDL Reports = new ReportsDL();
            int iRetVal = Reports.InsertFreeReport(ReferralID, Name, Email);
            return iRetVal;
        }//end function InsertFreeReport

        public int InsertFreeConsult(string ReferralID, string FirstName, string LastName, string Email, string CountryCode, string HomePhone, string WorkPhone)
        {
            ReportsDL Reports = new ReportsDL();
            int iRetVal = Reports.InsertFreeConsult(ReferralID, FirstName, LastName, Email, CountryCode, HomePhone, WorkPhone);
            return iRetVal;
        }//end function InsertFreeConsult

        public int InsertFreeApply(string ReferralID, string FirstName, string LastName, string Email,
            string CountryCodeHome, string HomePhone, string WorkPhone, string MobilePhone, string Company, string Address,
            string City, string State, string Region, string Zip, string Country, string URL, string Cart,
            string Comments)
        {
            ReportsDL Reports = new ReportsDL();
            int iRetVal = Reports.InsertFreeApply(ReferralID, FirstName, LastName, Email, CountryCodeHome, HomePhone, WorkPhone, MobilePhone,
                Company, Address, City, State, Region, Zip, Country, URL, Cart, Comments);
            return iRetVal;
        }//end function InsertFreeApply

        //This function checks if email exists
        public bool CheckEmailExists(string Email)
        {

            ReportsDL Check = new ReportsDL();
            DataSet ds = Check.CheckEmailExists( Email);
            bool bEmail = false;
            if (ds.Tables[0].Rows.Count > 0)
                bEmail = true;
            return bEmail;
        }//end function CheckEmailExists
    }//end class ReportsBL
}
