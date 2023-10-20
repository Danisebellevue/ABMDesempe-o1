using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABMDesempeño1
{
    public partial class BajasEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["Apellido"].DefaultValue = this.TextBox1.Text;
            int cant; cant = this.SqlDataSource1.Delete();
            if (cant == 1)
                this.Label2.Text = "Se borró el estudiante"; 
            else this.Label2.Text = "No existe dicho nombre";
        }
    }
}