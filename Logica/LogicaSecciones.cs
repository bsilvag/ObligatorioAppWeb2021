using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;
namespace Logica

{
    public class LogicaSecciones
    {
        public static Secciones Buscar(string pCodIntS)
        {
            return PersisitenciaSecciones.Buscar(pCodIntS);
        }

        public static void Alta(Secciones unaS)
        {
            PersisitenciaSecciones.Alta(unaS);
        }

        public static void Modificar(Secciones unaS)
        {
            PersisitenciaSecciones.Modificar(unaS);
        }

        public static void Eliminar(Secciones unaS)
        {
            PersisitenciaSecciones.Eliminar(unaS);
        }

        public static List<Secciones> ListarSecciones()
        {
            return PersisitenciaSecciones.ListarSecciones();
        }

        

    }
}
