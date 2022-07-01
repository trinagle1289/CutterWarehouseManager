
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
            this.TitleLabel = new System.Windows.Forms.Label();
            this.TableNamePanel = new System.Windows.Forms.Panel();
            this.TableNameLabel = new System.Windows.Forms.Label();
            this.DBFunPanel = new System.Windows.Forms.Panel();
            this.InsertButton = new System.Windows.Forms.Button();
            this.ModifyButton = new System.Windows.Forms.Button();
            this.DeleteButton = new System.Windows.Forms.Button();
            this.SearchButton = new System.Windows.Forms.Button();
            this.DBListViewer = new System.Windows.Forms.DataGridView();
            this.MainPanel = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.DBMenu = new HZH_Controls.Controls.UCMenu();
            this.TitlePanel.SuspendLayout();
            this.TableNamePanel.SuspendLayout();
            this.DBFunPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DBListViewer)).BeginInit();
            this.MainPanel.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // TitlePanel
            // 
            this.TitlePanel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TitlePanel.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.TitlePanel.Controls.Add(this.TitleLabel);
            this.TitlePanel.Location = new System.Drawing.Point(9, 9);
            this.TitlePanel.Margin = new System.Windows.Forms.Padding(0);
            this.TitlePanel.Name = "TitlePanel";
            this.TitlePanel.Size = new System.Drawing.Size(765, 68);
            this.TitlePanel.TabIndex = 0;
            // 
            // TitleLabel
            // 
            this.TitleLabel.Dock = System.Windows.Forms.DockStyle.Left;
            this.TitleLabel.Font = new System.Drawing.Font("微軟正黑體", 15F, System.Drawing.FontStyle.Bold);
            this.TitleLabel.Location = new System.Drawing.Point(0, 0);
            this.TitleLabel.Margin = new System.Windows.Forms.Padding(0);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(217, 68);
            this.TitleLabel.TabIndex = 0;
            this.TitleLabel.Text = "CNC刀具倉儲管理系統";
            this.TitleLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // TableNamePanel
            // 
            this.TableNamePanel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TableNamePanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TableNamePanel.Controls.Add(this.TableNameLabel);
            this.TableNamePanel.Location = new System.Drawing.Point(3, 5);
            this.TableNamePanel.Margin = new System.Windows.Forms.Padding(0, 5, 0, 5);
            this.TableNamePanel.Name = "TableNamePanel";
            this.TableNamePanel.Padding = new System.Windows.Forms.Padding(3);
            this.TableNamePanel.Size = new System.Drawing.Size(587, 43);
            this.TableNamePanel.TabIndex = 1;
            // 
            // TableNameLabel
            // 
            this.TableNameLabel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.TableNameLabel.Location = new System.Drawing.Point(3, 3);
            this.TableNameLabel.Margin = new System.Windows.Forms.Padding(0);
            this.TableNameLabel.Name = "TableNameLabel";
            this.TableNameLabel.Size = new System.Drawing.Size(579, 35);
            this.TableNameLabel.TabIndex = 0;
            this.TableNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // DBFunPanel
            // 
            this.DBFunPanel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.DBFunPanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.DBFunPanel.Controls.Add(this.InsertButton);
            this.DBFunPanel.Controls.Add(this.ModifyButton);
            this.DBFunPanel.Controls.Add(this.DeleteButton);
            this.DBFunPanel.Controls.Add(this.SearchButton);
            this.DBFunPanel.Location = new System.Drawing.Point(3, 58);
            this.DBFunPanel.Margin = new System.Windows.Forms.Padding(0, 5, 0, 5);
            this.DBFunPanel.Name = "DBFunPanel";
            this.DBFunPanel.Padding = new System.Windows.Forms.Padding(5);
            this.DBFunPanel.Size = new System.Drawing.Size(587, 48);
            this.DBFunPanel.TabIndex = 2;
            // 
            // InsertButton
            // 
            this.InsertButton.AutoSize = true;
            this.InsertButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.InsertButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.InsertButton.Location = new System.Drawing.Point(274, 5);
            this.InsertButton.Name = "InsertButton";
            this.InsertButton.Size = new System.Drawing.Size(102, 36);
            this.InsertButton.TabIndex = 3;
            this.InsertButton.Text = "新增項目";
            this.InsertButton.UseVisualStyleBackColor = true;
            // 
            // ModifyButton
            // 
            this.ModifyButton.AutoSize = true;
            this.ModifyButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ModifyButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.ModifyButton.Location = new System.Drawing.Point(376, 5);
            this.ModifyButton.Name = "ModifyButton";
            this.ModifyButton.Size = new System.Drawing.Size(102, 36);
            this.ModifyButton.TabIndex = 2;
            this.ModifyButton.Text = "修改項目";
            this.ModifyButton.UseVisualStyleBackColor = true;
            // 
            // DeleteButton
            // 
            this.DeleteButton.AutoSize = true;
            this.DeleteButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.DeleteButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.DeleteButton.Location = new System.Drawing.Point(478, 5);
            this.DeleteButton.Name = "DeleteButton";
            this.DeleteButton.Size = new System.Drawing.Size(102, 36);
            this.DeleteButton.TabIndex = 1;
            this.DeleteButton.Text = "刪除項目";
            this.DeleteButton.UseVisualStyleBackColor = true;
            // 
            // SearchButton
            // 
            this.SearchButton.AutoSize = true;
            this.SearchButton.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.SearchButton.Dock = System.Windows.Forms.DockStyle.Left;
            this.SearchButton.Location = new System.Drawing.Point(5, 5);
            this.SearchButton.Name = "SearchButton";
            this.SearchButton.Size = new System.Drawing.Size(62, 36);
            this.SearchButton.TabIndex = 0;
            this.SearchButton.Text = "查詢";
            this.SearchButton.UseVisualStyleBackColor = true;
            // 
            // DBListViewer
            // 
            this.DBListViewer.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.DBListViewer.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DBListViewer.Location = new System.Drawing.Point(5, 114);
            this.DBListViewer.Name = "DBListViewer";
            this.DBListViewer.RowTemplate.Height = 24;
            this.DBListViewer.Size = new System.Drawing.Size(585, 349);
            this.DBListViewer.TabIndex = 3;
            // 
            // MainPanel
            // 
            this.MainPanel.Controls.Add(this.panel1);
            this.MainPanel.Controls.Add(this.DBMenu);
            this.MainPanel.Controls.Add(this.TitlePanel);
            this.MainPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainPanel.Location = new System.Drawing.Point(0, 0);
            this.MainPanel.Margin = new System.Windows.Forms.Padding(0);
            this.MainPanel.Name = "MainPanel";
            this.MainPanel.Size = new System.Drawing.Size(784, 561);
            this.MainPanel.TabIndex = 4;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.TableNamePanel);
            this.panel1.Controls.Add(this.DBFunPanel);
            this.panel1.Controls.Add(this.DBListViewer);
            this.panel1.Location = new System.Drawing.Point(178, 86);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(596, 463);
            this.panel1.TabIndex = 4;
            // 
            // DBMenu
            // 
            this.DBMenu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
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
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.MainPanel);
            this.Font = new System.Drawing.Font("微軟正黑體", 15F);
            this.Margin = new System.Windows.Forms.Padding(7, 6, 7, 6);
            this.Name = "MainForm";
            this.ShowIcon = false;
            this.Text = "CNC刀具倉儲管理系統";
            this.TitlePanel.ResumeLayout(false);
            this.TableNamePanel.ResumeLayout(false);
            this.DBFunPanel.ResumeLayout(false);
            this.DBFunPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DBListViewer)).EndInit();
            this.MainPanel.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel TitlePanel;
        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.Panel TableNamePanel;
        private System.Windows.Forms.Label TableNameLabel;
        private System.Windows.Forms.Panel DBFunPanel;
        private System.Windows.Forms.Button SearchButton;
        private System.Windows.Forms.Button InsertButton;
        private System.Windows.Forms.Button ModifyButton;
        private System.Windows.Forms.Button DeleteButton;
        private System.Windows.Forms.Panel MainPanel;
        private HZH_Controls.Controls.UCMenu DBMenu;
        private System.Windows.Forms.DataGridView DBListViewer;
        private System.Windows.Forms.Panel panel1;
    }
}

