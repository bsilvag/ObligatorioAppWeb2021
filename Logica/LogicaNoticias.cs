using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;
namespace Logica
{
    public class LogicaNoticias
    {
        public static List<EntidadesCompartidas.Noticias> ListarNoticias()
        {
            List<Noticias> _lista = new List<Noticias>();

            _lista.AddRange(PersistenciaNacionales.ListarNN());
            _lista.AddRange(PersistenciaInternacionales.ListarNI());
 
            return (_lista);
        }

        public static void Agregar(Noticias pNoticias)
        {
            if (pNoticias is Internacionales)
                PersistenciaInternacionales.Alta((Internacionales)pNoticias);
            else
                PersistenciaNacionales.Alta((Nacionales)pNoticias);
        }


        public static List<EntidadesCompartidas.Noticias> ListarSeccionesNoticias(Secciones unaS)
        {
            List<Noticias> _lista = new List<Noticias>();

            _lista.AddRange(PersistenciaNacionales.ListarSeccionesNoticias(unaS));


            return (_lista);
        }


     }
}

