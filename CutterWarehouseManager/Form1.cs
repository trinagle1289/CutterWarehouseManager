﻿using System;
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

        private void boxTypesBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.boxTypesBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cutterWarehouseDataSet);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: 這行程式碼會將資料載入 'cutterWarehouseDataSet.DepotPosition' 資料表。您可以視需要進行移動或移除。
            this.depotPositionTableAdapter.Fill(this.cutterWarehouseDataSet.DepotPosition);
            // TODO: 這行程式碼會將資料載入 'cutterWarehouseDataSet.BoxTypes' 資料表。您可以視需要進行移動或移除。
            this.boxTypesTableAdapter.Fill(this.cutterWarehouseDataSet.BoxTypes);

        }
    }
}
