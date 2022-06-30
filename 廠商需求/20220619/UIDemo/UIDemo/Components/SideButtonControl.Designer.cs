
namespace UIDemo.Components
{
    partial class SideButtonControl
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
            this.panelMain = new System.Windows.Forms.Panel();
            this.lblName = new System.Windows.Forms.Label();
            this.panelMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.Controls.Add(this.lblName);
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(6, 1);
            this.panelMain.Margin = new System.Windows.Forms.Padding(7, 8, 7, 8);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(188, 40);
            this.panelMain.TabIndex = 1;
            this.panelMain.Click += new System.EventHandler(this.OnChildControlClicked);
            this.panelMain.MouseEnter += new System.EventHandler(this.SideButtonControl_MouseEnter);
            this.panelMain.MouseLeave += new System.EventHandler(this.SideButtonControl_MouseLeave);
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("微軟正黑體", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblName.Location = new System.Drawing.Point(9, 9);
            this.lblName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(41, 20);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "名稱";
            this.lblName.Click += new System.EventHandler(this.OnChildControlClicked);
            this.lblName.MouseEnter += new System.EventHandler(this.SideButtonControl_MouseEnter);
            this.lblName.MouseLeave += new System.EventHandler(this.SideButtonControl_MouseLeave);
            // 
            // SideButtonControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.Controls.Add(this.panelMain);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "SideButtonControl";
            this.Padding = new System.Windows.Forms.Padding(6, 1, 1, 1);
            this.Size = new System.Drawing.Size(195, 42);
            this.Click += new System.EventHandler(this.SideButtonControl_Click);
            this.MouseEnter += new System.EventHandler(this.SideButtonControl_MouseEnter);
            this.MouseLeave += new System.EventHandler(this.SideButtonControl_MouseLeave);
            this.panelMain.ResumeLayout(false);
            this.panelMain.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label lblName;
    }
}
