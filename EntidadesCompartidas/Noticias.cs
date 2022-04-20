using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public abstract class Noticias
    {
        //Atributo de instancia
        private int _id;

        //Atributo de clase
        private static int ID = 0;

        //Atributos
        private DateTime _FechaHora;
        private string _Resumen;
        private string _Contenido;
        private string _Titulo;
        //Atributos de Asoc. 
        private Periodista _Periodista;


        //Propiedades
        public int id
        {
            get { return _id; }
        }

        public DateTime FechaHora
        {
            set
            {
                if (DateTime.Now >= value)
                    _FechaHora = value;
                else
                    throw new Exception("No se existen noticias que aun no se escribieron");
            }
            get { return _FechaHora; }
        }

        public string Resumen
        {
            set
            {
                if (value.Trim().Length <= 100)
                    _Resumen = value;
                else
                    throw new Exception("Largo del resumen incorrecto: máximo 100 caracteres");
            }
            get { return _Resumen; }
        }

        public string Contenido
        {
            set
            {
                if (value.Trim().Length >= 1)
                    _Contenido = value;
                else
                    throw new Exception("La noticia debe tener un contenido");
            }
            get { return _Contenido; }
        }

        public string Titulo
        {
            get { return _Titulo; }
            set
            {
                if (value.Trim().Length <= 30)
                    _Titulo = value;
                else
                    throw new Exception("Largo de titulo incorrecto: máximo 30 caracteres");
            }

        }

        public Periodista Periodista
        {
            set
            {
                if (value == null)
                    throw new Exception("Debe saberse el periodista");
                else
                    _Periodista = value;
            }
            get { return _Periodista; }

        }

        
        //Constructores Completo
        public Noticias(DateTime pFechaHora, string pResumen, string pContenido, string pTitulo, Periodista unP)
        {
            //Genero proximo ID de noticias
            Noticias.ID++;
            this._id = Noticias.ID;

            FechaHora = pFechaHora;
            Resumen = pResumen;
            Contenido = pContenido;
            Titulo = pTitulo;
            Periodista = unP;
        }


        //Operaciónes 
        public override string ToString()
        {
            return ("ID: " + _id + " - Fecha de ingreso de la Noticia: " + _FechaHora.ToShortDateString() + DateTime.Now.ToString(" hh:mm:ss tt ") +
                " - Resumen: " + _Resumen + " - Contenido: " + _Contenido + " - Titulo: " + _Titulo +
                " - Periodista: " + this.Periodista.Nombre);
        }
    }
}
