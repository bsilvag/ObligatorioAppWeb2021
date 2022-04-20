using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Internacionales : Noticias
    {

        //Atributos 
        String _PaisOrigen;


        //Propiedades
        public string PaisOrigen
        {
            set
            {
                if (value.Trim().Length >= 1)
                    _PaisOrigen = value;
                else
                    throw new Exception("La noticia debe tener un país de origen");
            }
            get { return _PaisOrigen; }
        }


        //Constructor
        public Internacionales(DateTime pFechaHora, string pResumen, string pContenido,
            string pTitulo, string pPaisOrigen, Periodista unP)
            : base(pFechaHora, pResumen, pContenido, pTitulo, unP)
        {
            PaisOrigen = pPaisOrigen;
        }


        //Operaciones
        public override string ToString()
        {
            return (base.ToString() + " - País de Origen: " + _PaisOrigen + "- Noticia Internacional");
        }


    }
}
