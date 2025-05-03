using System;
using System.Data;
using DLAffiliateWiz;

namespace BLAffiliateWiz
{
    /// <summary>
    /// Summary description for States
    /// </summary>
    public class CommonListData
    {
        public DataSet GetReferralList()
        {
            CommonListTables CommonInfo = new CommonListTables();
            DataSet dsCommon = CommonInfo.GetReferralList();
            return dsCommon;
        }

        public DataSet GetCommonData(string TableName)
        {
            CommonListTables CommonInfo = new CommonListTables();
            DataSet dsCommon = CommonInfo.GetCommonLists(TableName);
            return dsCommon;
        }

        public DataSet GetList(string ListName)
        {
            CommonListTables CommonInfo = new CommonListTables();
            DataSet dsCommon = CommonInfo.GetList(ListName);
            return dsCommon;
        }

    }//end class commonlistdata

}
