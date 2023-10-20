using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABMDesempeño1
{
    public partial class AltaEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["Apellido"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.InsertParameters["Nombre"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.Insert(); 
            this.Label3.Text = "Se efectuó la carga";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";

        }   
    }
}