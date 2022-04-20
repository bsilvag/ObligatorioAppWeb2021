using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Nacionales : Noticias
    {
        //Atributos de Asoc. 
        private Secciones _Secciones;


        //Propiedades
        public Secciones Secciones
        {
            set
            {
                if (value == null)
                    throw new Exception("Debe saberse el código de Sección");
                else
                    _Secciones = value;
            }
            get { return _Secciones; }
        }


        //Constructor completo
        public Nacionales(DateTime pFechaHora, string pResumen, string pContenido, string pTitulo, Secciones unaS, Periodista unP)
            : base(pFechaHora, pResumen, pContenido, pTitulo, unP)
        {
            Secciones = unaS;
        }


        //Operaciónes 
        public override string ToString()
        {
            return (base.ToString() + " - Secciones: " + this.Secciones.Nombre + "- Noticia Nacional");
        }


    }
}
