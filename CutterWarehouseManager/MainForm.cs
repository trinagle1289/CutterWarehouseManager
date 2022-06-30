using HZH_Controls.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CutterWarehouseManager
{
    public partial class MainForm :Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        #region UI Events

        /// <summary>
        /// 加載資料表菜單
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DBMenu_Load(object sender, EventArgs e)
        {
            List<MenuItemEntity> menuItems = new List<MenuItemEntity>();

            menuItems.Add(MenuEntity("刀盒"));
            menuItems.Add(MenuEntity("刀具"));
            menuItems.Add(MenuEntity("系統設定", new string[] {
                    "刀盒狀態","刀盒類型","刀具類別", "刀具材質","倉庫記錄類型"
            }));
            menuItems.Add(MenuEntity("系統管理", new string[] { "使用者帳號" }));

            DBMenu.DataSource = menuItems;
        }

        /// <summary>
        /// 在菜單中選擇資料表行為
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DBMenu_SelectedItem(object sender, EventArgs e)
        {
            string dbName = "";

            try
            { dbName = ((UCMenuParentItem)sender).DataSource.Text; }
            catch (Exception) { }
            try
            { dbName = ((UCMenuChildrenItem)sender).DataSource.Text; }
            catch (Exception) { }

            SwitchTableView(dbName);
        }

        #endregion

        #region Menu UI

        int pNum = 0;
        /// <summary>
        /// 建立菜單實體
        /// </summary>
        /// <param name="parent">父物件</param>
        /// <returns></returns>
        private MenuItemEntity MenuEntity(string parent)
        {
            MenuItemEntity pEntity = new MenuItemEntity()
            {
                Key = "p" + pNum.ToString(),
                Text = parent
            };
            pNum++;

            return pEntity;
        }

        /// <summary>
        /// 建立菜單實體
        /// </summary>
        /// <param name="parent">父物件</param>
        /// <param name="children">子物件</param>
        /// <returns></returns>
        private MenuItemEntity MenuEntity(string parent, string[] children)
        {
            MenuItemEntity pEntity = MenuEntity(parent);

            for (int i = 0; i < children.Length; i++)
            {
                MenuItemEntity cEntity = new MenuItemEntity()
                {
                    Key = "c" + i.ToString(),
                    Text = children[i]
                };
                pEntity.Childrens.Add(cEntity);
            }

            return pEntity;
        }

        /// <summary>
        /// 切換 資料表 畫面
        /// </summary>
        /// <param name="table">資料表名稱</param>
        private void SwitchTableView(string table)
        {
            TableNameLabel.Text = "目前的資料表: " + table;
            switch (table)
            {
                case "刀盒":
                    GetTableView("ToolBox");
                    break;
                case "刀具":
                    GetTableView("Tools");
                    break;
                case "刀盒狀態":
                    GetTableView("BoxStatus");
                    break;
                case "刀盒類型":
                    GetTableView("BoxTypes");
                    break;
                case "刀具類別":
                    GetTableView("ToolTypes");
                    break;
                case "刀具材質":
                    GetTableView("ToolMaterials");
                    break;
                case "倉庫記錄類型":
                    GetTableView("RecordTypes");
                    break;
                case "使用者帳號":
                    GetTableView("Users");
                    break;
                default:
                    GetTableView("");
                    TableNameLabel.Text = "";
                    break;
            }
        }

        #endregion

        #region Database UI

        /// <summary>
        /// 連線到資料庫的字串
        /// </summary>
        string dbConntionString1 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=";
        string dbConntionString2 = @"\ToolDepot.mdf;Integrated Security=True";


        /// <summary>
        /// 取得 資料表 畫面
        /// </summary>
        /// <param name="tbName">資料表名稱</param>
        private void GetTableView(string tbName)
        {
            if (tbName.Equals("") || tbName == null)
            {
                DBListViewer.DataSource = null;
                return;
            }

            // 根據資料庫位置設定路徑
            string sqlConString = dbConntionString1 + System.IO.Directory.GetCurrentDirectory() + dbConntionString2;

            using (SqlConnection sqlCon = new SqlConnection(sqlConString))
            {
                sqlCon.Open();

                SqlDataAdapter sqlData = new SqlDataAdapter("SELECT * FROM " + tbName, sqlCon);
                DataTable dataTable = new DataTable();
                sqlData.Fill(dataTable);

                DBListViewer.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.ColumnHeader;
                DBListViewer.DataSource = dataTable;
            }
        }

        #endregion

        #region 棄用

        // string dbConntionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\repos\CutterWarehouseManager\CutterWarehouseManager\ToolDepot.mdf;Integrated Security=True";
        /*
        /// <summary>
        /// 連線到資料庫(作為連線的範例)
        /// </summary>
        private void ConnectDB()
        {
            using (SqlConnection sqlCon = new SqlConnection(dbConntionString1))
            {
                sqlCon.Open();
                SqlDataAdapter sqlData = new SqlDataAdapter("SELECT * FROM BoxStatus", sqlCon);
                DataTable dataTable = new DataTable();
                sqlData.Fill(dataTable);

                DBListViewer.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.ColumnHeader;
                DBListViewer.DataSource = dataTable;
            }
        }
        */

        #endregion

    }
}