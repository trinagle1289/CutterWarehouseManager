using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CutterWarehouseManager
{
    public partial class Form1 :Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void boxStatusBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.boxStatusBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.toolDepotDataSet);

        }

        private void boxStatusBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            this.Validate();
            this.boxStatusBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.toolDepotDataSet);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: 這行程式碼會將資料載入 'toolDepotDataSet.BoxStatus' 資料表。您可以視需要進行移動或移除。
            this.boxStatusTableAdapter.Fill(this.toolDepotDataSet.BoxStatus);

        }

        private void boxStatusDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }
    }
}
