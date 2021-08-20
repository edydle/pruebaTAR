using System.Data.SqlClient;
using System.Data;

namespace conexion
{
     private SqlConnection Conexion = new SqlConnection("Server=USUARIO\SQLEXPRESS;DataBase= organizacion;Integrated Security=true");
        public SqlConnection AbrirConexion()
        {
            if (Conexion.State == ConnectionState.Closed)
                Conexion.Open();
            return Conexion;
        }
        public SqlConnection CerrarConexion()
        {
            if (Conexion.State == ConnectionState.Open)
                Conexion.Close();
            return Conexion;
        }
    }
}
