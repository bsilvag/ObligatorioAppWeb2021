using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Logica;
using EntidadesCompartidas;

public partial class ListadoSecciones : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LSecciones.DataSource = Logica.LogicaSecciones.ListarSecciones();
            LSecciones.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void LSecciones_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            //obtengo Sección Seleccionada
            EntidadesCompartidas.Secciones unaS = Logica.LogicaSecciones.Buscar(LSecciones.SelectedRow.Cells[1].Text);

            if (unaS != null)
            {
                lblSecciones.Text = unaS.ToString();

                
                List<EntidadesCompartidas.Noticias> _lista = Logica.LogicaNoticias.ListarSeccionesNoticias(unaS);

                LSeccionesN.DataSource = _lista;
                LSeccionesN.DataBind();
            }
            else
            {
                lblSecciones.Text = "";
                LSeccionesN.DataSource = null;
                LSeccionesN.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    }
