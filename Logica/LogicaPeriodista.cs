using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;
namespace Logica
{
    public class LogicaPeriodista
    {
        public static Periodista Buscar(int pCodigoReg)
        {
            return PersistenciaPeriodista.Buscar(pCodigoReg);
        }

        public static void Alta(Periodista unP)
        {
            PersistenciaPeriodista.Alta(unP);
        }

        public static void Modificar(Periodista unP)
        {
            PersistenciaPeriodista.Modificar(unP);
        }

        public static void Eliminar(Periodista unP)
        {
            PersistenciaPeriodista.Eliminar(unP);
        }

        public static List<Periodista> ListarPeriodistas()
        {
            return PersistenciaPeriodista.ListarPeriodistas();
        }

    }
}
