
namespace CutterWarehouseManager
{
    partial class MainForm
    {
        /// <summary>
        /// 設計工具所需的變數。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清除任何使用中的資源。
        /// </summary>
        /// <param name="disposing">如果應該處置受控資源則為 true，否則為 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 設計工具產生的程式碼

        /// <summary>
        /// 此為設計工具支援所需的方法 - 請勿使用程式碼編輯器修改
        /// 這個方法的內容。
        /// </summary>
        private void InitializeComponent()
        {
            this.TitlePanel = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.DBNamePanel = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.DBFunPanel = new System.Windows.Forms.Panel();
            this.button4 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.MainPanel = new System.Windows.Forms.Panel();
            this.DBMenu = new HZH_Controls.Controls.UCMenu();
            this.DBListViewer = new System.Windows.Forms.DataGridView();
            this.TitlePanel.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            this.DBNamePanel.SuspendLayout();
            this.DBFunPanel.SuspendLayout();
            this.MainPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DBListViewer)).BeginInit();
            this.SuspendLayout();
            // 
            // TitlePanel
            // 
            this.TitlePanel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TitlePanel.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.TitlePanel.Controls.Add(this.label1);
            this.TitlePanel.Location = new System.Drawing.Point(9, 9);
            this.TitlePanel.Margin = new System.Windows.Forms.Padding(0);
            this.TitlePanel.Name = "TitlePanel";
            this.TitlePanel.Size = new System.Drawing.Size(782, 68);
            this.TitlePanel.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.Dock = System.Windows.Forms.DockStyle.Left;
            this.label1.Font = new System.Drawing.Font("微軟正黑體", 15F, System.Drawing.FontStyle.Bold);
            this.label1.Location = new System.Drawing.Point(0, 0);
            this.label1.Margin = new System.Windows.Forms.Padding(0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(217, 68);
            this.label1.TabIndex = 0;
            this.label1.Text = "CNC刀具倉儲管理系統";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.Controls.Add(this.DBNamePanel);
            this.flowLayoutPanel2.Controls.Add(this.DBFunPanel);
            this.flowLayoutPanel2.Controls.Add(this.DBListViewer);
            this.flowLayoutPanel2.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flowLayoutPanel2.Location = new System.Drawing.Point(178, 86);
            this.flowLayoutPanel2.Margin = new System.Windows.Forms.Padding(5);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(611, 463);
            this.flowLayoutPanel2.TabIndex = 2;
            // 
            // DBNamePanel
            // 
            this.DBNamePanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.DBNamePanel.Controls.Add(this.label2);
            this.DBNamePanel.Location = new System.Drawing.Point(0, 5);
            this.DBNamePanel.Margin = new System.Windows.Forms.Padding(0, 5, 0, 5);
            this.DBNamePanel.Name = "DBNamePanel";
            this.DBNamePanel.Padding = new System.Windows.Forms.Padding(3);
            this.DBNamePanel.Size = new System.Drawing.Size(611, 43);
            this.DBNamePanel.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.Dock = System.Windows.Forms.DockStyle.Left;
            this.label2.Location = new System.Drawing.Point(3, 3);
            this.label2.Margin = new System.Windows.Forms.Padding(0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(129, 35);
            this.label2.TabIndex = 0;
            this.label2.Text = "資料庫名稱:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // DBFunPanel
            // 
            this.DBFunPanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.DBFunPanel.Controls.Add(this.button4);
            this.DBFunPanel.Controls.Add(this.button3);
            this.DBFunPanel.Controls.Add(this.button2);
            this.DBFunPanel.Controls.Add(this.button1);
            this.DBFunPanel.Location = new System.Drawing.Point(0, 58);
            this.DBFunPanel.Margin = new System.Windows.Forms.Padding(0, 5, 0, 5);
            this.DBFunPanel.Name = "DBFunPanel";
            this.DBFunPanel.Padding = new System.Windows.Forms.Padding(5);
            this.DBFunPanel.Size = new System.Drawing.Size(611, 48);
            this.DBFunPanel.TabIndex = 2;
            // 
            // button4
            // 
            this.button4.AutoSize = true;
            this.button4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.button4.Dock = System.Windows.Forms.DockStyle.Right;
            this.button4.Location = new System.Drawing.Point(298, 5);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(102, 36);
            this.button4.TabIndex = 3;
            this.button4.Text = "新增項目";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.AutoSize = true;
            this.button3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.button3.Dock = System.Windows.Forms.DockStyle.Right;
            this.button3.Location = new System.Drawing.Point(400, 5);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(102, 36);
            this.button3.TabIndex = 2;
            this.button3.Text = "修改項目";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.AutoSize = true;
            this.button2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.button2.Dock = System.Windows.Forms.DockStyle.Right;
            this.button2.Location = new System.Drawing.Point(502, 5);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(102, 36);
            this.button2.TabIndex = 1;
            this.button2.Text = "刪除項目";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.AutoSize = true;
            this.button1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.button1.Dock = System.Windows.Forms.DockStyle.Left;
            this.button1.Location = new System.Drawing.Point(5, 5);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(62, 36);
            this.button1.TabIndex = 0;
            this.button1.Text = "查詢";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // MainPanel
            // 
            this.MainPanel.Controls.Add(this.DBMenu);
            this.MainPanel.Controls.Add(this.TitlePanel);
            this.MainPanel.Controls.Add(this.flowLayoutPanel2);
            this.MainPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainPanel.Location = new System.Drawing.Point(0, 0);
            this.MainPanel.Margin = new System.Windows.Forms.Padding(0);
            this.MainPanel.Name = "MainPanel";
            this.MainPanel.Size = new System.Drawing.Size(801, 561);
            this.MainPanel.TabIndex = 4;
            // 
            // DBMenu
            // 
            this.DBMenu.AutoScroll = true;
            this.DBMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(20)))), ((int)(((byte)(30)))), ((int)(((byte)(39)))));
            this.DBMenu.ChildrenItemStyles = null;
            this.DBMenu.ChildrenItemType = typeof(HZH_Controls.Controls.UCMenuChildrenItem);
            this.DBMenu.DataSource = null;
            this.DBMenu.IsShowFirstItem = false;
            this.DBMenu.Location = new System.Drawing.Point(9, 86);
            this.DBMenu.Margin = new System.Windows.Forms.Padding(5);
            this.DBMenu.MenuStyle = HZH_Controls.Controls.MenuStyle.Top;
            this.DBMenu.Name = "DBMenu";
            this.DBMenu.ParentItemStyles = null;
            this.DBMenu.ParentItemType = typeof(HZH_Controls.Controls.UCMenuParentItem);
            this.DBMenu.Size = new System.Drawing.Size(161, 463);
            this.DBMenu.TabIndex = 3;
            this.DBMenu.SelectedItem += new System.EventHandler(this.DBMenu_SelectedItem);
            this.DBMenu.Load += new System.EventHandler(this.DBMenu_Load);
            // 
            // DBListViewer
            // 
            this.DBListViewer.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DBListViewer.Location = new System.Drawing.Point(3, 114);
            this.DBListViewer.Name = "DBListViewer";
            this.DBListViewer.RowTemplate.Height = 24;
            this.DBListViewer.Size = new System.Drawing.Size(608, 333);
            this.DBListViewer.TabIndex = 3;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(801, 561);
            this.Controls.Add(this.MainPanel);
            this.Font = new System.Drawing.Font("微軟正黑體", 15F);
            this.Margin = new System.Windows.Forms.Padding(7, 6, 7, 6);
            this.Name = "MainForm";
            this.ShowIcon = false;
            this.Text = "CNC刀具倉儲管理系統";
            this.TitlePanel.ResumeLayout(false);
            this.flowLayoutPanel2.ResumeLayout(false);
            this.DBNamePanel.ResumeLayout(false);
            this.DBFunPanel.ResumeLayout(false);
            this.DBFunPanel.PerformLayout();
            this.MainPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.DBListViewer)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel TitlePanel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Panel DBNamePanel;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel DBFunPanel;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Panel MainPanel;
        private HZH_Controls.Controls.UCMenu DBMenu;
        private System.Windows.Forms.DataGridView DBListViewer;
    }
}

