using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntidadesCompartidas;
using System.Data.SqlClient;
using System.Data;
namespace Persistencia
{
    public class PersistenciaInternacionales
    {
        public static void Alta(Internacionales unaN) 
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("AgregarNoticiaInter", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            _Comando.Parameters.AddWithValue("@PaisOrigen", unaN.PaisOrigen);
            _Comando.Parameters.AddWithValue("@FechaHora", unaN.FechaHora);
            _Comando.Parameters.AddWithValue("@Resumen", unaN.Resumen);
            _Comando.Parameters.AddWithValue("@Contenido", unaN.Contenido);
            _Comando.Parameters.AddWithValue("@Titulo", unaN.Titulo);
            _Comando.Parameters.AddWithValue("@CodigoReg", unaN.Periodista.CodigoReg);

            SqlParameter _Retorno = new SqlParameter("@Retorno", SqlDbType.Int);
            _Retorno.Direction = ParameterDirection.ReturnValue;
            _Comando.Parameters.Add(_Retorno);


            try
            {
                _Conexion.Open();
                _Comando.ExecuteNonQuery();

                int oAfectados = (int)_Comando.Parameters["@Retorno"].Value;

                if (oAfectados == -1)
                    throw new Exception("No existe el Periodista");
                else if (oAfectados == -2)
                    throw new Exception("Error en TRN");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _Conexion.Close();
            }
        }

        public static List<Noticias> ListarNI()
        {
            List<Noticias> _lista = new List<Noticias>(); ;
            SqlDataReader _Reader;

            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("ListarNoticiasInter", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            try
            {
                _Conexion.Open();
                _Reader = _Comando.ExecuteReader();

                if (_Reader.HasRows)
                {
                    while (_Reader.Read())
                    {

                        Internacionales N = new Internacionales(Convert.ToDateTime(_Reader["FechaHora"]), _Reader["Resumen"].ToString(), _Reader["Contenido"].ToString(), _Reader["Titulo"].ToString(), _Reader["PaisOrigen"].ToString(), PersistenciaPeriodista.Buscar(Convert.ToInt32(_Reader["CodigoReg"])));

                        _lista.Add(N);
                    }
                }

                _Reader.Close();

            }
            catch (Exception ex)
            {
                throw new ApplicationException("Problemas con la base de datos:" + ex.Message);
            }
            finally
            {
                _Conexion.Close();
            }

            return _lista;
        }
    }
}
