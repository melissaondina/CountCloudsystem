using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_CountCloud
{
    public partial class Categorias: System.Web.UI.Page
    {
        
        public string DatosDD1;
        public string CadenaConexion1 = Querys.Conexion;
        protected void Page_Load(object sender, EventArgs e)
        {
            GVCategorias.DataSource = Querys.getTable("Select * from Categorias");
  
            if (!IsPostBack)
            {


                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = CadenaConexion1;
                conn.Open();

                SqlDataAdapter da = new SqlDataAdapter("Select * from Categorias", conn);
                DataSet ds = new DataSet();
                da.Fill(ds, "mvdn");
                GVCategorias.DataSource = ds.Tables[0];
                GVCategorias.DataBind();
                
            }
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {

            //Response.Write("<script language='JavaScript'>alert('" + DDLista.SelectedItem + "," + txtNombre.Text + "," + txtPrecio.Text + "');</script>");
            Querys.getTable("insert into Categorias (Nombre, Descripcion) values ('" + txtnombrec.Text + "','" + txtDescripcion.Text + "')");
        }

        protected void GVCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

      


    }
}