using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Logica;
using EntidadesCompartidas;

public partial class ListadoNoticias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
                Session["Lista"] = Logica.LogicaNoticias.ListarNoticias();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void BtnListar_Click(object sender, EventArgs e)
    {
        try
        {
            if (DdlTipo.SelectedIndex == 0)
            {
                //muestro todas las noticias
                GvNoticias.DataSource = (List<EntidadesCompartidas.Noticias>)Session["Lista"];
                GvNoticias.DataBind();
            }
            else if (DdlTipo.SelectedIndex == 1)
            {
                //muestro solo las nacionales
                List<EntidadesCompartidas.Nacionales> _listaN = new List<EntidadesCompartidas.Nacionales>();
                List<EntidadesCompartidas.Noticias> _lista = (List<EntidadesCompartidas.Noticias>)Session["Lista"];

                foreach (EntidadesCompartidas.Noticias N in _lista)
                {
                    if (N is EntidadesCompartidas.Nacionales)
                        _listaN.Add((EntidadesCompartidas.Nacionales)N);
                }

                GvNoticias.DataSource = _listaN; 
                GvNoticias.DataBind();
            }
            else
            {
                //muestro solo las internacionales
                List<EntidadesCompartidas.Internacionales> _listaI = new List<EntidadesCompartidas.Internacionales>();
                List<EntidadesCompartidas.Noticias> _lista = (List<EntidadesCompartidas.Noticias>)Session["Lista"];

                foreach (EntidadesCompartidas.Noticias N in _lista)
                {
                    if (N is EntidadesCompartidas.Internacionales)
                        _listaI.Add((EntidadesCompartidas.Internacionales)N);
                }

                GvNoticias.DataSource = _listaI; ;
                GvNoticias.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}