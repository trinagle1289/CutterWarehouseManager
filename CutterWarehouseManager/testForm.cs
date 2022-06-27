using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using HZH_Controls;
using HZH_Controls.Controls;

namespace CutterWarehouseManager
{
    public partial class testForm :Form
    {

        List<MenuItemEntity> ds = new List<MenuItemEntity>();

        public testForm()
        {
            InitializeComponent();
        }

        private void testForm_Load(object sender, EventArgs e)
        {
            MenuItemEntity pEntity = new MenuItemEntity();
            pEntity.Text = "Parent";
            pEntity.Key = "1";

            MenuItemEntity cEntity = new MenuItemEntity();
            cEntity.Text = "Child";
            cEntity.Key = "1.1";

            pEntity.Childrens.Add(cEntity);

            ds.Add(pEntity);

            ucMenu1.DataSource = ds;
        }
    }
}
