using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class AgregarNoticiaInternacional : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<Periodista> pPeriodista = LogicaPeriodista.ListarPeriodistas();

            if (pPeriodista.Count > 0)
            {
                cboPeriodista.DataSource = pPeriodista;
                cboPeriodista.DataTextField = "Nombre";
                cboPeriodista.DataValueField = "CodigoReg";
                cboPeriodista.DataBind();
            }
            else
            {
                lblError.Text = "Error: no existe un periodista publicacion. Debe ingresar uno primero";
                txtPaisOrigen.Enabled = false;
                txtResumen.Enabled = false;
                txtContenido.Enabled = false;
                txtTitulo.Enabled = false;
                btnAgregar.Enabled = false;
                cboPeriodista.Enabled = false;
            }
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        string oMensaje = "";
        int CodigoReg = 0;
        string PaisOrigen = "";
        string Resumen = "";
        string Contenido = "";
        string Titulo = "";

        try
        {
            CodigoReg = Convert.ToInt32(cboPeriodista.SelectedValue);
            PaisOrigen = Convert.ToString(txtPaisOrigen.Text);
            Resumen = Convert.ToString(txtResumen.Text);
            Contenido = Convert.ToString(txtContenido.Text);
            Titulo = Convert.ToString(txtTitulo.Text);
        }
        catch 
        {
            oMensaje = "El código de registro no es un numero";
        }

        if (oMensaje != "")
        {
            lblError.Text = oMensaje;
        }
        else
        {
            try
            {
                Periodista pe = LogicaPeriodista.Buscar(CodigoReg);
                Internacionales I = new Internacionales(clnFecha.SelectedDate, PaisOrigen, Resumen, Contenido, Titulo, pe);

                LogicaNoticias.Agregar(I);
                lblError.Text = "Alta con exito de la Noticia";

                txtPaisOrigen.Text = "";
                txtResumen.Text = "";
                txtContenido.Text = "";
                txtTitulo.Text = "";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
    protected void clnFecha_SelectionChanged(object sender, EventArgs e)
    {

    }
}