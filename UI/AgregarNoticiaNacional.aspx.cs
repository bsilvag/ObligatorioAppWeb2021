using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class AgregarNoticiaNacional : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<Periodista> pPeriodista = LogicaPeriodista.ListarPeriodistas();
            List<Secciones> pSecciones = LogicaSecciones.ListarSecciones();

            if (pPeriodista.Count > 0)
            {
                cboPeriodista.DataSource = pPeriodista;
                cboPeriodista.DataTextField = "Nombre";
                cboPeriodista.DataValueField = "CodigoReg";
                cboPeriodista.DataBind();

                cboSeccion.DataSource = pSecciones;
                cboSeccion.DataTextField = "Nombre";
                cboSeccion.DataValueField = "CodIntS";
                cboSeccion.DataBind();

            }
            else
            {
                lblError.Text = "Error: no existe un periodista publicacion. Debe ingresar uno primero";
                txtResumen.Enabled = false;
                txtContenido.Enabled = false;
                txtTitulo.Enabled = false;
                btnAgregar.Enabled = false;
                cboPeriodista.Enabled = false;
                cboSeccion.Enabled = false;
            }
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        string oMensaje = "";
        int CodigoReg = 0;
        string Resumen = "";
        string Contenido = "";
        string Titulo = "";
        string CodIntS = "";

        try
        {
            CodigoReg = Convert.ToInt32(cboPeriodista.SelectedValue);
            Resumen = Convert.ToString(txtResumen.Text);
            Contenido = Convert.ToString(txtContenido.Text);
            Titulo = Convert.ToString(txtTitulo.Text);
            CodIntS = Convert.ToString(cboSeccion.SelectedValue);
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
                Secciones s = LogicaSecciones.Buscar(CodIntS);
                Nacionales I = new Nacionales(clnFecha.SelectedDate, Resumen, Contenido, Titulo, s, pe);

                LogicaNoticias.Agregar(I);
                lblError.Text = "Alta con exito de la Noticia";

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
}