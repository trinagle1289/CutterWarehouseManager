
namespace CutterWarehouseManager
{
    partial class testForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ucMenu1 = new HZH_Controls.Controls.UCMenu();
            this.SuspendLayout();
            // 
            // ucMenu1
            // 
            this.ucMenu1.AutoScroll = true;
            this.ucMenu1.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;
            this.ucMenu1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(20)))), ((int)(((byte)(30)))), ((int)(((byte)(39)))));
            this.ucMenu1.ChildrenItemStyles = null;
            this.ucMenu1.ChildrenItemType = typeof(HZH_Controls.Controls.UCMenuChildrenItem);
            this.ucMenu1.DataSource = null;
            this.ucMenu1.IsShowFirstItem = true;
            this.ucMenu1.Location = new System.Drawing.Point(12, 12);
            this.ucMenu1.MenuStyle = HZH_Controls.Controls.MenuStyle.Fill;
            this.ucMenu1.Name = "ucMenu1";
            this.ucMenu1.ParentItemStyles = null;
            this.ucMenu1.ParentItemType = typeof(HZH_Controls.Controls.UCMenuParentItem);
            this.ucMenu1.Size = new System.Drawing.Size(204, 468);
            this.ucMenu1.TabIndex = 3;
            // 
            // testForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.ucMenu1);
            this.Name = "testForm";
            this.Text = " ";
            this.Load += new System.EventHandler(this.testForm_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private HZH_Controls.Controls.UCMenu ucMenu1;
    }
}