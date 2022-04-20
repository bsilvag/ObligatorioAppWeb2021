using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntidadesCompartidas;
using System.Data.SqlClient;
using System.Data;

namespace Persistencia
{
    public class PersistenciaPeriodista
    {
        public static Periodista Buscar(int pCodigoReg)
        {
            int oCodigoReg = 0;
            string oNombre = "";
            string oMail = "";
            Periodista P = null;
            SqlDataReader _Reader;

            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("BuscoPeriodista", _Conexion);

            _Comando.CommandType = CommandType.StoredProcedure;
            _Comando.Parameters.AddWithValue("@CodigoReg", pCodigoReg);


            try
            {
                _Conexion.Open();
                _Reader = _Comando.ExecuteReader();

                if (_Reader.Read())
                {
                    oCodigoReg = (int)_Reader["CodigoReg"];
                    oNombre = (string)_Reader["Nombre"];
                    oMail = (string)_Reader["Mail"];
                    P = new Periodista(oCodigoReg, oNombre, oMail);
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

            return P;
        }

        public static void Alta(Periodista unP)
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("AltaPeriodista", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            _Comando.Parameters.AddWithValue("@CodigoReg", unP.CodigoReg);
            _Comando.Parameters.AddWithValue("@Nombre", unP.Nombre);
            _Comando.Parameters.AddWithValue("@Mail", unP.Email);

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

        public static void Modificar(Periodista unP)
        {
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("ModPeriodista", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            _Comando.Parameters.AddWithValue("@CodigoReg", unP.CodigoReg);
            _Comando.Parameters.AddWithValue("@Nombre", unP.Nombre);
            _Comando.Parameters.AddWithValue("@Mail", unP.Email);

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

        public static void Eliminar(Periodista unP)
        {
            //comando a ejecutar
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("BajaPeriodista", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            //parametros 
            SqlParameter _codigo = new SqlParameter("@CodigoReg", unP.CodigoReg);

            SqlParameter _Retorno = new SqlParameter("@Retorno", SqlDbType.Int);
            _Retorno.Direction = ParameterDirection.ReturnValue;

            _Comando.Parameters.Add(_codigo);
            _Comando.Parameters.Add(_Retorno);

            try
            {
                _Conexion.Open();
                _Comando.ExecuteNonQuery();

                int oAfectados = (int)_Comando.Parameters["@Retorno"].Value;
                // no creo esto este bien, porque solo estamos contemplando ese error, osea que
                //ahi tiene que estar mal la bd, porque una sola afectacion??? y donde esta la 
                //afectacion de que el periodista no existe? Lo mismo los de arriba
                if (oAfectados == -1)
                    throw new Exception("TIene noticias asociadas, no se puede eliminar");
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

        public static List<Periodista> ListarPeriodistas()
        {
            int oCodigoReg;
            string oNombre;
            string oMail;
            List<Periodista> oListaPeriodistas = new List<Periodista>();

            SqlDataReader oReader;
            SqlConnection _Conexion = new SqlConnection(Conexion._Cnn);
            SqlCommand _Comando = new SqlCommand("ListarPeriodistas", _Conexion);
            _Comando.CommandType = CommandType.StoredProcedure;

            try
            {
                _Conexion.Open();
                oReader = _Comando.ExecuteReader();

                while (oReader.Read())
                {
                    oCodigoReg = (int)oReader["CodigoReg"];
                    oNombre = (string)oReader["Nombre"];
                    oMail = (string)oReader["Mail"];

                    Periodista p = new Periodista(oCodigoReg, oNombre, oMail);
                    oListaPeriodistas.Add(p);
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
            return oListaPeriodistas;
        }

    }
}
