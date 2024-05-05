using System.Data;
using MySql.Data.MySqlClient;
using Prueba_2.Models;

namespace TestSol
{
    public class ConBD
    {
        //RECUPERA DATOS
        string based = "prueba_1";
        string contr = "12345";
        string usuario = "root";
        string hos = "127.0.0.1";
        //string cadena2 = "server=35.215.119.43;database=dbqu11tsgpgapa;user=uee2twjjwx39j;password=r75N#iq)$126;";
        public MySqlConnection conectar = new MySqlConnection();
        public void AbrirConexion()
        {
            //HACE CONEXION
            string cadena = "server=" + hos + ";database=" + based + ";user=" + usuario + ";password=" + contr;
            try
            {
                //conectar = new MySqlConnection();
                conectar.ConnectionString = cadena;
                conectar.Open();
                System.Diagnostics.Debug.WriteLine("Conexion con exito");

            }
            catch (System.Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
        public void CerrarConexion()
        {
            try
            {
                if (conectar.State == ConnectionState.Open)
                {
                    conectar.Close();
                    System.Diagnostics.Debug.WriteLine("Cerrar conexion");
                }
            }
            catch (System.Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
    }
}
