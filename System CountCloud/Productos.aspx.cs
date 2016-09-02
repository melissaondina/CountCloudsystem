using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace System_CountCloud
{
    public partial class Productos : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        public string DatosDD;
        public string CadenaConexion = Querys.Conexion;
        protected void Page_Load(object sender, EventArgs e)
        {
           // GVProductos.DataSource = Querys.getTable("Select * from Usuario");
  
            if (!IsPostBack)
            {
               
                DDLista.Items.Insert(0, new ListItem("---Seleccione un Registro---", "0"));
                DDLista.Items.Insert(1, new ListItem("Verduras", "1"));
                DDLista.Items.Insert(2, new ListItem("Frutas", "2"));
                DDLista.Items.Insert(3, new ListItem("Granos Basicos", "3"));



                
                conn.ConnectionString = CadenaConexion;
                conn.Open();

              /*  SqlDataAdapter da = new SqlDataAdapter("Select * from Usuario", conn);
                DataSet ds = new DataSet();
                da.Fill(ds, "mvdn");
                GVProductos.DataSource = ds.Tables[0];
                GVProductos.DataBind();*/
                
            }
        }

        private void LLenar_Grilla()
        {
            SqlCommand cmd = new SqlCommand("Producto_actualizar", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GVProductos.DataSource = dt;
            this.GVProductos.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            //Response.Write("<script language='JavaScript'>alert('" + DDLista.SelectedItem + "," + txtNombre.Text + "," + txtPrecio.Text + "');</script>");
            Querys.getTable("insert into Usuario (Articulo, Id_Categoria, Precio) values ('" + txtNombre.Text + "','" + DDLista.SelectedItem + "','" + txtPrecio.Text  + "')");
        }

        protected void DDLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            DatosDD = DDLista.SelectedItem.Text;
        }

        protected void GVProductos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GVProductos_Load(object sender, EventArgs e)
        {
            
        }

        protected void a(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GVProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
         
            try
            {
                GVProductos.EditIndex = e.NewEditIndex;
                LLenar_Grilla();
            }
            catch (Exception ex)
            {
               
            }    

        }

        protected void GVProductos_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GVProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string art, cate, precio, barra;
            try
            {
                TextBox txt = new TextBox();
                art = ((TextBox)GVProductos.Rows[e.RowIndex].FindControl("TextArt")).Text;

                cate = ((TextBox)GVProductos.Rows[e.RowIndex].FindControl("TextCate")).Text;

                precio = ((TextBox)GVProductos.Rows[e.RowIndex].FindControl("TextPre")).Text;

                barra = ((TextBox)GVProductos.Rows[e.RowIndex].FindControl("TextBarra")).Text;

                SqlCommand cmd = new SqlCommand("Producto_actualizar", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Art", SqlDbType.Int).Value = art;
                    cmd.Parameters.AddWithValue("@cate", SqlDbType.VarChar).Value = cate;
                    cmd.Parameters.AddWithValue("@prec", SqlDbType.Int).Value = precio;
                    cmd.Parameters.AddWithValue("@codba", SqlDbType.Int).Value = barra;

                }
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                GVProductos.EditIndex = -1;
                LLenar_Grilla();

            }
            catch (Exception ex)
            {

            }
        }

        protected void GVProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                LLenar_Grilla();
                GVProductos.PageIndex = e.NewPageIndex;
                this.GVProductos.DataBind();
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void GVProductos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                GVProductos.EditIndex = -1;
                LLenar_Grilla();
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}