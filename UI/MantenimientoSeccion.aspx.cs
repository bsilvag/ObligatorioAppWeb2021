using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class MantenimientoSeccion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.LimpioFormulario();
            this.DesactivoBotones();
        }
    }

    private void LimpioFormulario()
    {
        txtCodIntS.Text = "";
        txtNombre.Text = "";
    }

    private void DesactivoBotones()
    {
        btnAgregar.Enabled = false;
        BtnModificar.Enabled = false;
        btnBaja.Enabled = false;
        btnBuscar.Enabled = true;
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string CodIntS = "";

        try
        {
            CodIntS = Convert.ToString(txtCodIntS.Text);
        }
        catch
        {
            lblError.Text = "Formato incorrecto para el código interno de Seccion";
            return;
        }

        try
        {
            Secciones s = LogicaSecciones.Buscar(CodIntS);
            if (s != null)
            {
                txtNombre.Text = s.Nombre;

                Session["UnaS"] = s;
                btnBaja.Enabled = true;
                BtnModificar.Enabled = true;
            }
            else
            {
                btnAgregar.Enabled = true;
                Session["UnaS"] = null;
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void BtnModificar_Click(object sender, EventArgs e)
    {
        try
        {
            Secciones s = (Secciones)Session["UnaS"];
            s.Nombre = txtNombre.Text.Trim();
        
            Logica.LogicaSecciones.Modificar(s);
            lblError.Text = "Modificación exitosa";
            this.LimpioFormulario();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void btnBaja_Click(object sender, EventArgs e)
    {
        try
        {
            Secciones s = (Secciones)Session["UnaS"];

            LogicaSecciones.Eliminar(s);
            lblError.Text = "Eliminación exitosa";

            this.LimpioFormulario();
            this.DesactivoBotones();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            Secciones _unaS = new Secciones(txtCodIntS.Text.Trim(), txtNombre.Text.Trim());

            Logica.LogicaSecciones.Alta(_unaS);
            lblError.Text = "Alta con exito";
            this.LimpioFormulario();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        this.LimpioFormulario();
        this.DesactivoBotones();
    }
}