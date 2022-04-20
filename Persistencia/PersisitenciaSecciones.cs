using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntidadesCompartidas;
using System.Data.SqlClient;
using System.Data;
namespace Persistencia
{
    public class PersisitenciaSecciones
    {
        public static Secciones Buscar(string pCodIntS)
        {
            string oCodIntS = "";
            string oNombre = "";
            Secciones S = null;
            SqlDataReader _Reader;

            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("BuscoSecciones", _Conexion);

            _Comando.CommandType = CommandType.StoredProcedure;
            _Comando.Parameters.AddWithValue("@CodIntS", pCodIntS);

            try
            {
                _Conexion.Open();
                _Reader = _Comando.ExecuteReader();

                if (_Reader.Read())
                {
                    oCodIntS = (string)_Reader["CodIntS"];
                    oNombre = (string)_Reader["Nombre"];
                    
                    S = new Secciones(oCodIntS, oNombre);
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

            return S;
        }

        public static void Alta(Secciones unaS)
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("AgregarSecc", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            _Comando.Parameters.AddWithValue("@CodIntS", unaS.CodIntS);
            _Comando.Parameters.AddWithValue("@Nombre", unaS.Nombre);

            SqlParameter _Retorno = new SqlParameter("@Retorno", SqlDbType.Int);
            _Retorno.Direction = ParameterDirection.ReturnValue;
            _Comando.Parameters.Add(_Retorno);

            try
            {
                _Conexion.Open();
                _Comando.ExecuteNonQuery();

                int oAfectados = (int)_Comando.Parameters["@Retorno"].Value;

                if (oAfectados == -1)
                    throw new Exception("Error - No se dio de alta");
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

        public static void Modificar(Secciones unaS)
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("ModSec", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            _Comando.Parameters.AddWithValue("@CodIntS", unaS.CodIntS);
            _Comando.Parameters.AddWithValue("@Nombre", unaS.Nombre);

            SqlParameter _Retorno = new SqlParameter("@Retorno", SqlDbType.Int);
            _Retorno.Direction = ParameterDirection.ReturnValue;
            _Comando.Parameters.Add(_Retorno);

            try
            {
                _Conexion.Open();
                _Comando.ExecuteNonQuery();

                int oAfectados = (int)_Comando.Parameters["@Retorno"].Value;

                if (oAfectados == -1)
                    throw new Exception("Error - No se modifico");

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

        public static void Eliminar(Secciones unaS)
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("BajaSeccion", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            //parametros 
            SqlParameter _codigos = new SqlParameter("@CodIntS", unaS.CodIntS);

            SqlParameter _Retorno = new SqlParameter("@Retorno", SqlDbType.Int);
            _Retorno.Direction = ParameterDirection.ReturnValue;

            _Comando.Parameters.Add(_codigos);
            _Comando.Parameters.Add(_Retorno);

            try
            {
                _Conexion.Open();
                _Comando.ExecuteNonQuery();

                int oAfectados = (int)_Comando.Parameters["@Retorno"].Value;

                if (oAfectados == -1)
                    throw new Exception("No existe la sección");
                else if (oAfectados == -2)
                    throw new Exception("Error en la eliminación de la Sección");
                else if (oAfectados == -3)
                    throw new Exception("Error en la eliminación de las Noticias");
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

        public static List<Secciones> ListarSecciones()
        {
            string oCodIntS;
            string oNombre;
            List<Secciones> oListaSecciones = new List<Secciones>();

            SqlDataReader oReader;
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("ListarSecciones", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            try
            {
                _Conexion.Open();
                oReader = _Comando.ExecuteReader();

                while (oReader.Read())
                {
                    oCodIntS = (string)oReader["CodIntS"];
                    oNombre = (string)oReader["Nombre"];

                    Secciones s = new Secciones(oCodIntS, oNombre);
                    oListaSecciones.Add(s);
                }
                oReader.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _Conexion.Close();
            }
            return oListaSecciones;
        }
    }
}
