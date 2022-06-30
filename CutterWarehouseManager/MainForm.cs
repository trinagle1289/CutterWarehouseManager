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

        private void DBMenu_SelectedItem(object sender, EventArgs e)
        {
            string dbName = "";

            try
            { dbName = ((UCMenuParentItem)sender).DataSource.Text; }
            catch (Exception) { }

            try
            { dbName = ((UCMenuChildrenItem)sender).DataSource.Text; }
            catch (Exception) { }

            MessageBox.Show(dbName);
            SwitchDBView(dbName);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //ConnectDB();
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

        private void SwitchDBView(string dbName)
        {
            switch (dbName)
            {
                case "刀盒狀態":
                    ConnectDB();
                    break;
                default:
                    break;
            }
        }

        #endregion

        #region Database UI

        readonly string dbConntionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\repos\CutterWarehouseManager\CutterWarehouseManager\ToolDepot.mdf;Integrated Security=True";

        private void ConnectDB()
        {
            using (SqlConnection sqlCon = new SqlConnection(dbConntionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlData = new SqlDataAdapter("SELECT * FROM BoxStatus", sqlCon);
                DataTable dataTable = new DataTable();
                sqlData.Fill(dataTable);

                DBListViewer.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.ColumnHeader;
                DBListViewer.DataSource = dataTable;

                sqlCon.Close();
            }
        }

        #endregion

    }
}