using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_CountCloud
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            if(tbUname.Text=="")
            {MensajeError();}
            else if ( tbPass.Text == "")
            { MensajeError(); }
            else if (tbCPass.Text == "")
            { MensajeError(); }
            else if (tbName.Text == "")
            { MensajeError(); }
            else if (tbApellido.Text == "")
            { MensajeError(); }
            else if (tbEmail.Text == "")
            { MensajeError(); }
            else 
            { 
          // Response.Write("<script language='JavaScript'>alert('"+tbUname.Text+"'+'"+tbPass.Text+"'+'"+tbName.Text+"'+'"+tbEmail.Text+"');</script>");
            Querys.getTable("insert into Arti (Usuario, Contraseña, Nombre, Apellido, Correo) values ('"+tbUname.Text+"','"+tbPass.Text+"','"+tbName.Text+"','"+tbApellido.Text+"','"+tbEmail.Text+"')");
            Limpiar();
             Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "GoodUser();", true);
            }   
        }


        public void Limpiar()
        {
            tbUname.Text = "";
            tbPass.Text = "";
            tbCPass.Text = "";
            tbName.Text = "";
            tbApellido.Text = "";
            tbEmail.Text = "";

        }

        public void MensajeError()
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Hola", "ErrorUser();", true);
        }


    }
}