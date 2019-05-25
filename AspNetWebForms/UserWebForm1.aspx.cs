using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWebForms {
    public partial class UserWebForm1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if(!Page.IsPostBack) {
                op1.Text = "3";
                op2.Text = "5";
            }

        }

        protected void Add_Click(object sender, EventArgs e) {
            var op1 = int.Parse(this.op1.Text);
            var op2 = int.Parse(this.op2.Text);
            answer.Text = (op1 + op2).ToString();
        }
    }
}