using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Periodista
    {

        //Atributos 
        int _CodigoReg;
        string _Nombre;
        string _Email;


        //Propiedades
        public int CodigoReg
        {
            set
            {
                if (value <= 0)
                    throw new Exception("Codigo de registro inválido");
                else
                    _CodigoReg = value;
            }
            get { return _CodigoReg; }
        }

        public string Nombre
        {
            set
            {
                if (value.Trim().Length >= 1)
                    _Nombre = value;
                else
                    throw new Exception("Debe escribir un nombre para el periodista");
            }
            get { return _Nombre; }
        }

        public string Email
        {
            set
            {
                if (value.Trim().Length >= 1)
                    _Email = value;
                else
                    throw new Exception("Debe escribir un email");
            }
            get { return _Email; }
        }


        //Constructor 
        public Periodista(int pCodigoReg, string pNombre, string pEmail)
        {
            CodigoReg = pCodigoReg;
            Nombre = pNombre;
            Email = pEmail;
        }

        //Operaciones
        public override string ToString()
        {
            return ("Código de registro: " + CodigoReg + "Nombre completo del periodista: " + Nombre + "Email: " + Email);
        }



    }
}
