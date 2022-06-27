using System;
using System.Data.SqlClient;
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

        private void button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MessageBox.Show("Connect Successfully");
            con.Close();
        }
    }
}
