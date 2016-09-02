using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_CountCloud
{
    public class Querys
    {

        public static String Conexion = "Data Source=IRLANDA\\SQLEXPRESS;Initial Catalog=CountCloud;Integrated Security=True";






        public static DataTable getTable(string Sql)
        {
            SqlConnection conexionSQL = new SqlConnection(Conexion);
            SqlCommand sqlCommand = null;
            SqlDataReader sqlDataReader = null;
            try
            {
                conexionSQL.Open();
                sqlCommand = new SqlCommand(Sql, conexionSQL);
                sqlDataReader = sqlCommand.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(sqlDataReader);
                return dt;
                
            }
            catch (Exception err)
            {
               //Response.Write("<script language='JavaScript'>alert('"+err.Message.ToString()+"');</script>");
               
                
            }
            finally
            {
                if (sqlDataReader != null)
                    sqlDataReader.Close();
                if (conexionSQL.State == ConnectionState.Open)
                    conexionSQL.Close();
            }
            return null;
        }

    }
}