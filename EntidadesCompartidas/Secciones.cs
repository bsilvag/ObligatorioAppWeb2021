using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Secciones
    {
        // Atributos 
        string _CodIntS;
        string _Nombre;


        //Propiedades
        public string CodIntS
        {
            set
            {
                if (value.Trim().Length == 3)
                    _CodIntS = value;
                else
                    throw new Exception("El código interno debe de ser de 3 caractéres");
            }
            get { return _CodIntS; }
        }

        public string Nombre
        {
            set
            {
                if (value.Trim().Length >= 1)
                    _Nombre = value;
                else
                    throw new Exception("Debe escribir un nombre para la sección");
            }
            get { return _Nombre; }
        }


        //Constructor Completo
        public Secciones(string pCodIntS, string pNombre)
        {
            CodIntS = pCodIntS;
            Nombre = pNombre;
        }


        //Operaciones
        public override string ToString()
        {
            return ("Código Intero de Sección: " + _CodIntS + "Nombre Sección: " + _Nombre);
        }



    }
}
