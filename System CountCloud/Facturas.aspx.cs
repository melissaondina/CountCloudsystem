using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_CountCloud
{
    public partial class Facturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLista.Items.Insert(0, new ListItem("---Seleccione un Registro---", ""));
            DDLista.Items.Insert(1, new ListItem("Verduras", ""));
            DDLista.Items.Insert(2, new ListItem("Frutas", ""));
            DDLista.Items.Insert(3, new ListItem("Granos Basicos", ""));

        }
    }
}