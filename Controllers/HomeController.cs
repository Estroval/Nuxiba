using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Prueba_2.Models;
using MySql.Data.MySqlClient;
using System.Diagnostics.Eventing.Reader;

namespace TestSol.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }


     //    [HttpPost]
        public IActionResult Index()
        {
            return View();
        }
           
      
        public IActionResult Empleado(int ID,string Nombre_E, string Ape_P, string Ape_M, string login_V, string Fe_N, int Sueldo_E,int AgregarB, int BorrarB, int CambioB)
        {
            string nombre_ei = Nombre_E;
            string ape_ai = Ape_P;
            string ape_mi = Ape_M;
            string login = login_V;
            string fecha_i = Fe_N;
            int sueldo_ei = Sueldo_E;

            string nombre_u ="";
            string apellido_P = "";
            string apellido_M = "";
            string login_u ="";
            DateTime fecha_I;
            int sueldo_U = 0;
            int userID = 0;

            int ID_borrar = ID;
            int ID_cambiar = ID; 
            int sueldo_ecb = Sueldo_E;



            int cont = 0;
            int x = 0;

            ConBD cone = new ConBD();
            cone.AbrirConexion();
            MySqlCommand linea = new MySqlCommand();
            linea.CommandText = "SELECT * FROM USUARIOS INNER JOIN EMPLEADOS ON USUARIOS.Login = EMPLEADOS.Login;";
            // linea.CommandText = "SELECT Nombre_E,Apellido_P,Apellido_M,Area_E,Fecha_Nac,sueldo_E FROM empleado WHERE Nombre_E = @nombre_e AND Apellido_P = @ape_a AND Apellido_M = @ape_M AND Area_E = @area_e AND Fecha_Nac = @fe_n AND sueldo_E = @sueldo_e;";


            linea.Parameters.AddWithValue("@userId", userID);
            linea.Parameters.AddWithValue("@cont", cont);
            linea.Parameters.AddWithValue("@nombre_e", nombre_u);
            linea.Parameters.AddWithValue("@ape_a", apellido_P);
            linea.Parameters.AddWithValue("@ape_m", apellido_M);
            linea.Parameters.AddWithValue("@area_e", login_u);
            linea.Parameters.AddWithValue("@fe_n", fecha_I);
            linea.Parameters.AddWithValue("@sueldo_e", sueldo_U);
     
            linea.Connection = cone.conectar;
            MySqlDataReader consultar1 = linea.ExecuteReader();

            while (consultar1.Read())
            {
                cont = consultar1.GetInt32(0);
                userID = consultar1.GetInt32(0);
                nombre_u = consultar1.GetString(2);
                apellido_P = consultar1.GetString(3);
                apellido_M = consultar1.GetString(4);
                login_u = consultar1.GetString(1);
                fecha_I = consultar1.GetDateTime(7);
                sueldo_U = consultar1.GetInt32(6);


                ViewData["ID"+x]= cont;
                ViewData["cont"] = x;
                ViewData["Nombre_EC"+x] = nombre_u;
                ViewData["Ape_AC" + x] = apellido_P;
                ViewData["Ape_MC" + x] = apellido_M;
                ViewData["Area_EC" + x] = login_u;
                ViewData["Fe_NC" + x] = fecha_I;
                ViewData["Sueldo_EC" + x] = sueldo_U;


                x++;
            }
            cone.CerrarConexion();


            if (AgregarB == 1)

            {
                cone.AbrirConexion();
                // Insertar en la tabla Usu_Emp
                string query1 = "INSERT INTO USUARIOS(Nombre,Paterno,Materno,login) VALUES(@nombre_ei, @ape_ai, @ape_mi,@login);";
                MySqlCommand command1 = new MySqlCommand(query1, cone.conectar);

                command1.Parameters.AddWithValue("@nombre_ei", nombre_ei);
                command1.Parameters.AddWithValue("@ape_ai", ape_ai);
                command1.Parameters.AddWithValue("@ape_mi", ape_mi);
                command1.Parameters.AddWithValue("@area_ei", login);
              
               
                
                command1.ExecuteNonQuery();
                
                
                cone.CerrarConexion();

                //---------
                cone.AbrirConexion();
                // Insertar en la tabla Usu_Emp
                string query2 = "INSERT INTO EMPLEADOS(Sueldo,FechaIngreso) VALUES(@Sueldo,@FechaIngreso);";
                MySqlCommand command2 = new MySqlCommand(query2, cone.conectar);

                command1.Parameters.AddWithValue("@fechaIngreso", fecha_i);
                command1.Parameters.AddWithValue("@sueldo", sueldo_ei);

                command1.ExecuteNonQuery();


                cone.CerrarConexion();

            }


          

                if (BorrarB == 2)
                {

                System.Diagnostics.Debug.WriteLine(ID_borrar);
               

                cone.AbrirConexion();
                string borrar = "DELETE FROM Prubra_1.USUARIO WHERE (userId = '"+ID_borrar+"');";
                MySqlCommand command2 = new MySqlCommand(borrar, cone.conectar);
                command2.ExecuteNonQuery();
                cone.CerrarConexion();
                

                }
                
                
                if (CambioB ==3) {
                System.Diagnostics.Debug.WriteLine(ID_cambiar);
                System.Diagnostics.Debug.WriteLine(sueldo_ecb);
                
                cone.AbrirConexion();
                string cambio = "UPDATE Prueba_1.EMPLEADOS SET Sueldo = '"+sueldo_ecb+"' WHERE (userId = '"+ID_cambiar+"');";
                MySqlCommand command3 = new MySqlCommand(cambio, cone.conectar);
                command3.Parameters.AddWithValue("@sueldo",sueldo_ecb );
                command3.ExecuteNonQuery();

                cone.CerrarConexion();
                
            }



            return View();

        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}