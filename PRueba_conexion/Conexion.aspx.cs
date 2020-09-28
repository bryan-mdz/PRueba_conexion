using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace PRueba_conexion
{
    public partial class Conexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                gdvProductos();
               
            }
        }
            public void gdvProductos()
            {
                 using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connBD"].ConnectionString))
                {
                    
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_selectProducto";
                    cmd.Connection = con;
                    con.Open();
                    gdvProducto.DataSource = cmd.ExecuteReader();
                    gdvProducto.DataBind();
            }
            }

        public void ingresar()
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connBD"].ConnectionString))
                {

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_insertarProducto";
                    
                    cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = txtCodigo.Text.Trim();
                    cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = txtDescripcion.Text.Trim();
                    cmd.Parameters.Add("@precio", SqlDbType.Float).Value = Convert.ToSingle(txtPrecio.Text.Trim());
                    cmd.Parameters.Add("@marca", SqlDbType.VarChar).Value = txtMarca.Text.Trim();
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();

                }
            }
            protected void btnIngresar_Click(object sender, EventArgs e)
            {
                ingresar();
                gdvProductos();
            }
        
    }
}