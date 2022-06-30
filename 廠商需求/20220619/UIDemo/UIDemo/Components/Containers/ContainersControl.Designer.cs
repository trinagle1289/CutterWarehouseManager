
namespace UIDemo.Components.Containers
{
    partial class ContainersControl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.panelMain = new System.Windows.Forms.Panel();
            this.panelCenter = new System.Windows.Forms.Panel();
            this.panelCenterCenter = new System.Windows.Forms.Panel();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.idDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.purchasedPartNumberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuttingToolsTypeNumberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cuttingToolsTypeNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.numberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.storagePositionIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.storagePositionNumberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.positionXDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.positionYDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lengthDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.widthDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.heightDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isObsoleteDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.isBorrowedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.containerViewDataBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.panelCenterTop = new System.Windows.Forms.Panel();
            this.btnPackaging = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.panelTop = new System.Windows.Forms.Panel();
            this.tlpTitle = new System.Windows.Forms.TableLayoutPanel();
            this.lblTitle = new System.Windows.Forms.Label();
            this.containerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.panelMain.SuspendLayout();
            this.panelCenter.SuspendLayout();
            this.panelCenterCenter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.containerViewDataBindingSource)).BeginInit();
            this.panelCenterTop.SuspendLayout();
            this.panelTop.SuspendLayout();
            this.tlpTitle.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.containerBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.Controls.Add(this.panelCenter);
            this.panelMain.Controls.Add(this.panelTop);
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(0, 0);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(606, 402);
            this.panelMain.TabIndex = 0;
            // 
            // panelCenter
            // 
            this.panelCenter.Controls.Add(this.panelCenterCenter);
            this.panelCenter.Controls.Add(this.panelCenterTop);
            this.panelCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCenter.Location = new System.Drawing.Point(0, 54);
            this.panelCenter.Name = "panelCenter";
            this.panelCenter.Size = new System.Drawing.Size(606, 348);
            this.panelCenter.TabIndex = 1;
            // 
            // panelCenterCenter
            // 
            this.panelCenterCenter.Controls.Add(this.dataGridView1);
            this.panelCenterCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCenterCenter.Location = new System.Drawing.Point(0, 40);
            this.panelCenterCenter.Name = "panelCenterCenter";
            this.panelCenterCenter.Padding = new System.Windows.Forms.Padding(10);
            this.panelCenterCenter.Size = new System.Drawing.Size(606, 308);
            this.panelCenterCenter.TabIndex = 1;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idDataGridViewTextBoxColumn,
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn,
            this.purchasedPartNumberDataGridViewTextBoxColumn,
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn,
            this.cuttingToolsTypeNumberDataGridViewTextBoxColumn,
            this.cuttingToolsTypeNameDataGridViewTextBoxColumn,
            this.numberDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.storagePositionIdDataGridViewTextBoxColumn,
            this.storagePositionNumberDataGridViewTextBoxColumn,
            this.positionXDataGridViewTextBoxColumn,
            this.positionYDataGridViewTextBoxColumn,
            this.lengthDataGridViewTextBoxColumn,
            this.widthDataGridViewTextBoxColumn,
            this.heightDataGridViewTextBoxColumn,
            this.isObsoleteDataGridViewCheckBoxColumn,
            this.isBorrowedDataGridViewCheckBoxColumn});
            this.dataGridView1.DataSource = this.containerViewDataBindingSource;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(10, 10);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(586, 288);
            this.dataGridView1.TabIndex = 0;
            // 
            // idDataGridViewTextBoxColumn
            // 
            this.idDataGridViewTextBoxColumn.DataPropertyName = "Id";
            this.idDataGridViewTextBoxColumn.HeaderText = "Id";
            this.idDataGridViewTextBoxColumn.Name = "idDataGridViewTextBoxColumn";
            this.idDataGridViewTextBoxColumn.Visible = false;
            // 
            // cuttingToolsInformationIdDataGridViewTextBoxColumn
            // 
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn.DataPropertyName = "CuttingToolsInformationId";
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn.HeaderText = "CuttingToolsInformationId";
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn.Name = "cuttingToolsInformationIdDataGridViewTextBoxColumn";
            this.cuttingToolsInformationIdDataGridViewTextBoxColumn.Visible = false;
            // 
            // purchasedPartNumberDataGridViewTextBoxColumn
            // 
            this.purchasedPartNumberDataGridViewTextBoxColumn.DataPropertyName = "PurchasedPartNumber";
            this.purchasedPartNumberDataGridViewTextBoxColumn.HeaderText = "採購料號";
            this.purchasedPartNumberDataGridViewTextBoxColumn.Name = "purchasedPartNumberDataGridViewTextBoxColumn";
            // 
            // cuttingToolsTypeIdDataGridViewTextBoxColumn
            // 
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn.DataPropertyName = "CuttingToolsTypeId";
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn.HeaderText = "CuttingToolsTypeId";
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn.Name = "cuttingToolsTypeIdDataGridViewTextBoxColumn";
            this.cuttingToolsTypeIdDataGridViewTextBoxColumn.Visible = false;
            // 
            // cuttingToolsTypeNumberDataGridViewTextBoxColumn
            // 
            this.cuttingToolsTypeNumberDataGridViewTextBoxColumn.DataPropertyName = "CuttingToolsTypeNumber";
            this.cuttingToolsTypeNumberDataGridViewTextBoxColumn.HeaderText = "刀具型式編號";
            this.cuttingToolsTypeNumberDataGridViewTextBoxColumn.Name = "cuttingToolsTypeNumberDataGridViewTextBoxColumn";
            // 
            // cuttingToolsTypeNameDataGridViewTextBoxColumn
            // 
            this.cuttingToolsTypeNameDataGridViewTextBoxColumn.DataPropertyName = "CuttingToolsTypeName";
            this.cuttingToolsTypeNameDataGridViewTextBoxColumn.HeaderText = "刀具型式名稱";
            this.cuttingToolsTypeNameDataGridViewTextBoxColumn.Name = "cuttingToolsTypeNameDataGridViewTextBoxColumn";
            // 
            // numberDataGridViewTextBoxColumn
            // 
            this.numberDataGridViewTextBoxColumn.DataPropertyName = "Number";
            this.numberDataGridViewTextBoxColumn.HeaderText = "盒子編號";
            this.numberDataGridViewTextBoxColumn.Name = "numberDataGridViewTextBoxColumn";
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "盒子名稱";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            // 
            // storagePositionIdDataGridViewTextBoxColumn
            // 
            this.storagePositionIdDataGridViewTextBoxColumn.DataPropertyName = "StoragePositionId";
            this.storagePositionIdDataGridViewTextBoxColumn.HeaderText = "StoragePositionId";
            this.storagePositionIdDataGridViewTextBoxColumn.Name = "storagePositionIdDataGridViewTextBoxColumn";
            this.storagePositionIdDataGridViewTextBoxColumn.Visible = false;
            // 
            // storagePositionNumberDataGridViewTextBoxColumn
            // 
            this.storagePositionNumberDataGridViewTextBoxColumn.DataPropertyName = "StoragePositionNumber";
            this.storagePositionNumberDataGridViewTextBoxColumn.HeaderText = "儲位編號";
            this.storagePositionNumberDataGridViewTextBoxColumn.Name = "storagePositionNumberDataGridViewTextBoxColumn";
            // 
            // positionXDataGridViewTextBoxColumn
            // 
            this.positionXDataGridViewTextBoxColumn.DataPropertyName = "PositionX";
            this.positionXDataGridViewTextBoxColumn.HeaderText = "X軸";
            this.positionXDataGridViewTextBoxColumn.Name = "positionXDataGridViewTextBoxColumn";
            // 
            // positionYDataGridViewTextBoxColumn
            // 
            this.positionYDataGridViewTextBoxColumn.DataPropertyName = "PositionY";
            this.positionYDataGridViewTextBoxColumn.HeaderText = "Y軸";
            this.positionYDataGridViewTextBoxColumn.Name = "positionYDataGridViewTextBoxColumn";
            // 
            // lengthDataGridViewTextBoxColumn
            // 
            this.lengthDataGridViewTextBoxColumn.DataPropertyName = "Length";
            this.lengthDataGridViewTextBoxColumn.HeaderText = "盒長";
            this.lengthDataGridViewTextBoxColumn.Name = "lengthDataGridViewTextBoxColumn";
            // 
            // widthDataGridViewTextBoxColumn
            // 
            this.widthDataGridViewTextBoxColumn.DataPropertyName = "Width";
            this.widthDataGridViewTextBoxColumn.HeaderText = "盒寬";
            this.widthDataGridViewTextBoxColumn.Name = "widthDataGridViewTextBoxColumn";
            // 
            // heightDataGridViewTextBoxColumn
            // 
            this.heightDataGridViewTextBoxColumn.DataPropertyName = "Height";
            this.heightDataGridViewTextBoxColumn.HeaderText = "盒高";
            this.heightDataGridViewTextBoxColumn.Name = "heightDataGridViewTextBoxColumn";
            // 
            // isObsoleteDataGridViewCheckBoxColumn
            // 
            this.isObsoleteDataGridViewCheckBoxColumn.DataPropertyName = "IsObsolete";
            this.isObsoleteDataGridViewCheckBoxColumn.HeaderText = "作廢";
            this.isObsoleteDataGridViewCheckBoxColumn.Name = "isObsoleteDataGridViewCheckBoxColumn";
            // 
            // isBorrowedDataGridViewCheckBoxColumn
            // 
            this.isBorrowedDataGridViewCheckBoxColumn.DataPropertyName = "IsBorrowed";
            this.isBorrowedDataGridViewCheckBoxColumn.HeaderText = "領刀";
            this.isBorrowedDataGridViewCheckBoxColumn.Name = "isBorrowedDataGridViewCheckBoxColumn";
            // 
            // containerViewDataBindingSource
            // 
            this.containerViewDataBindingSource.DataSource = typeof(UIDemo.ViewModels.ContainerViewData);
            // 
            // panelCenterTop
            // 
            this.panelCenterTop.Controls.Add(this.btnPackaging);
            this.panelCenterTop.Controls.Add(this.button1);
            this.panelCenterTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCenterTop.Location = new System.Drawing.Point(0, 0);
            this.panelCenterTop.Name = "panelCenterTop";
            this.panelCenterTop.Size = new System.Drawing.Size(606, 40);
            this.panelCenterTop.TabIndex = 0;
            // 
            // btnPackaging
            // 
            this.btnPackaging.Location = new System.Drawing.Point(50, 8);
            this.btnPackaging.Name = "btnPackaging";
            this.btnPackaging.Size = new System.Drawing.Size(75, 23);
            this.btnPackaging.TabIndex = 2;
            this.btnPackaging.Text = "裝盒";
            this.btnPackaging.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.BackgroundImage = global::UIDemo.Properties.Resources.add;
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button1.FlatAppearance.BorderColor = System.Drawing.SystemColors.Control;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Location = new System.Drawing.Point(17, 6);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(26, 26);
            this.button1.TabIndex = 1;
            this.button1.UseVisualStyleBackColor = true;
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.White;
            this.panelTop.Controls.Add(this.tlpTitle);
            this.panelTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTop.Location = new System.Drawing.Point(0, 0);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(606, 54);
            this.panelTop.TabIndex = 0;
            // 
            // tlpTitle
            // 
            this.tlpTitle.ColumnCount = 1;
            this.tlpTitle.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tlpTitle.Controls.Add(this.lblTitle, 0, 0);
            this.tlpTitle.Dock = System.Windows.Forms.DockStyle.Left;
            this.tlpTitle.Location = new System.Drawing.Point(0, 0);
            this.tlpTitle.Name = "tlpTitle";
            this.tlpTitle.RowCount = 1;
            this.tlpTitle.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tlpTitle.Size = new System.Drawing.Size(229, 54);
            this.tlpTitle.TabIndex = 0;
            // 
            // lblTitle
            // 
            this.lblTitle.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblTitle.AutoSize = true;
            this.lblTitle.Font = new System.Drawing.Font("Microsoft JhengHei", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.lblTitle.ForeColor = System.Drawing.Color.Red;
            this.lblTitle.Location = new System.Drawing.Point(30, 15);
            this.lblTitle.Margin = new System.Windows.Forms.Padding(30, 0, 3, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(48, 24);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "盒子";
            // 
            // containerBindingSource
            // 
            this.containerBindingSource.DataSource = typeof(UIDemo.Models.Container);
            // 
            // ContainersControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelMain);
            this.Name = "ContainersControl";
            this.Size = new System.Drawing.Size(606, 402);
            this.panelMain.ResumeLayout(false);
            this.panelCenter.ResumeLayout(false);
            this.panelCenterCenter.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.containerViewDataBindingSource)).EndInit();
            this.panelCenterTop.ResumeLayout(false);
            this.panelTop.ResumeLayout(false);
            this.tlpTitle.ResumeLayout(false);
            this.tlpTitle.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.containerBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Panel panelCenter;
        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.TableLayoutPanel tlpTitle;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.Panel panelCenterTop;
        private System.Windows.Forms.Panel panelCenterCenter;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.BindingSource containerBindingSource;
        private System.Windows.Forms.BindingSource containerViewDataBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn idDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuttingToolsInformationIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn purchasedPartNumberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuttingToolsTypeIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuttingToolsTypeNumberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuttingToolsTypeNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn numberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn storagePositionIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn storagePositionNumberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn positionXDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn positionYDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn lengthDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn widthDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn heightDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isObsoleteDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isBorrowedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.Button btnPackaging;
    }
}
