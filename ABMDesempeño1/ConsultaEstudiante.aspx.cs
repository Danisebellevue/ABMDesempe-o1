using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABMDesempeño1
{
    public partial class ConsultaEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["Apellido"].DefaultValue = this.TextBox1.Text; 
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read()) this.Label2.Text = "Nombre:" + datos["Nombre"];
            else this.Label2.Text = "No existe un estudiante con dicho nombre";
        }
    }
}