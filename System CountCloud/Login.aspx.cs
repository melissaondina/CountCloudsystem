using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_CountCloud
{
    public partial class Login : System.Web.UI.Page
    {
        public String ConexionSQL = Querys.Conexion;
        public String Usuario;
        public String Contraseña;
        public string User;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "successalert();", true);
            //Response.Write("<script language='JavaScript'>alert('" + txtUsuario.Text + " '+'" + txtContraseña.Text + "');</script>");

            Extraer_USUARIO();
            Extraer_Contraseña();
            if(txtUsuario.Text=="")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "ErrorUsuario();", true);
            }
            if (txtContraseña.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "ErrorContraseña();", true);
            }
            else if (txtUsuario.Text == Usuario && txtContraseña.Text == Contraseña)
           {
               User = txtUsuario.Text;                            
               //Response.Write("<script language='JavaScript'>alert('" + User + "');</script>");
               Response.Redirect("Productos.aspx");
           }
            
           
        }


        public void Extraer_USUARIO()
        {
            try
            {
                string myConnectionString = ConexionSQL; //you connectionstring goes here
                SqlCommand cmd = new SqlCommand("select Usuario from Usuario where Usuario='"+txtUsuario.Text+"'", new SqlConnection(myConnectionString));
                cmd.Connection.Open();
                Usuario = cmd.ExecuteScalar().ToString(); // assign to your String
                cmd.Connection.Close();
            }
            catch (Exception err)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "ErrorUsuario();", true);
                
            }
        }

        public void Extraer_Contraseña()
        {
            try
            {
                string myConnectionString = ConexionSQL; //you connectionstring goes here
                SqlCommand cmd = new SqlCommand("select Contraseña from Usuario where Contraseña='" + txtContraseña.Text + "'", new SqlConnection(myConnectionString));
                cmd.Connection.Open();
                Contraseña = cmd.ExecuteScalar().ToString(); // assign to your String
                cmd.Connection.Close();
            }
            catch (Exception err)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "ErrorContraseña();", true);

            }
        }




    }
}