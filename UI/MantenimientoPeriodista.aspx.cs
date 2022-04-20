using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class MantenimientoPeriodista : System.Web.UI.Page
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
        txtCodigoReg.Text = "";
        txtNombre.Text = "";
        txtEmail.Text = "";

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
        int CodigoReg = 0;

        try
        {
            CodigoReg = Convert.ToInt32(txtCodigoReg.Text);
        }
        catch
        {
            lblError.Text = "Formato incorrecto para el código de registro";
            return;
        }

        try
        {
            Periodista pe = LogicaPeriodista.Buscar(CodigoReg);
            if (pe != null)
            {
                txtNombre.Text = pe.Nombre;
                txtEmail.Text = pe.Email;

                Session["UnP"] = pe;
                btnBaja.Enabled = true;
                BtnModificar.Enabled = true;
            }
            else 
            {
                btnAgregar.Enabled = true;
                Session["UnP"] = null;
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
            Periodista p = (Periodista)Session["UnP"];
            p.Nombre = txtNombre.Text.Trim();
            p.Email = txtEmail.Text.Trim();
        
            Logica.LogicaPeriodista.Modificar(p);
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
            Periodista p = (Periodista)Session["UnP"];

            LogicaPeriodista.Eliminar(p);
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
            Periodista _unP = new Periodista(Convert.ToInt32(txtCodigoReg.Text), txtNombre.Text.Trim(), txtEmail.Text.Trim());

            Logica.LogicaPeriodista.Alta(_unP);
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