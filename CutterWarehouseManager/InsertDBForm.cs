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
    public partial class InsertDBForm :Form
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        public InsertDBForm()
        {
            InitializeComponent();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\repos\CutterWarehouseManager\CutterWarehouseManager\ToolDepot.mdf;Integrated Security=True";
        }

        private void boxStatusBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.boxStatusBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.toolDepotDataSet);

        }

        private void InsertDBForm_Load(object sender, EventArgs e)
        {
            // TODO: 這行程式碼會將資料載入 'toolDepotDataSet.BoxStatus' 資料表。您可以視需要進行移動或移除。
            this.boxStatusTableAdapter.Fill(this.toolDepotDataSet.BoxStatus);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MessageBox.Show("Connect Successfully");
            con.Close();
        }
    }
}
