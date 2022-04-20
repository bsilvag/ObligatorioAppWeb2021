<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MantenimientoPeriodista.aspx.cs" Inherits="MantenimientoPeriodista" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 21px;
            width: 135px;
            font-family: Calibri;
            font-size: medium;
            text-align: center;
        }
        .style2
        {
            width: 135px;
        }
        .style3
        {
            font-family: Calibri;
        }
        .style4
        {
            width: 135px;
            font-family: Calibri;
            font-size: medium;
            text-align: center;
        }
        .style5
        {
            font-family: "Century Gothic";
            text-decoration: underline;
        }
        .style6
        {
            font-family: Calibri;
            font-size: medium;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            font-family: Calibri;
            font-size: medium;
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div style="height: 342px; background-color: #CCCCCC">
    
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <div class="style7">
            <div class="style7">
                <p style="margin-left: 40px">
            <b style="margin-left: 200px; background-color: #FFFFCC"><span class="style5">Mantenimiento Periodista</span><br 
                        class="style3" />
            <br class="style3" />
            </b>
                </p>
            </div>
            <table>
                <tr>
                    <td class="style1">
                        Código de Registro:</td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="txtCodigoReg" runat="server" CssClass="style6"></asp:TextBox>
                    </td>
                    <td style="width: 100px; height: 21px">
                        <asp:Button ID="btnBuscar" runat="server" Font-Bold="True" 
                            OnClick="btnBuscar_Click" Text="Buscar" CssClass="style6" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Nombre:</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="style6"></asp:TextBox>
                    </td>
                    <td style="width: 100px" class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Email:</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="style6"></asp:TextBox>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    </td>
                    <td align="center" style="width: 100px" class="style6">
                        &nbsp;</td>
                    <td align="center" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnAgregar" runat="server" Font-Bold="True" 
                            OnClick="btnAgregar_Click" Text="Agregar" CssClass="style6" />
                        <asp:Button ID="BtnModificar" runat="server" Enabled="False" Font-Bold="True" 
                            OnClick="BtnModificar_Click" Text="Modificar" CssClass="style6" />
                        <asp:Button ID="btnBaja" runat="server" Enabled="False" Font-Bold="True" 
                            OnClick="btnBaja_Click" Text="Eliminar" CssClass="style6" />
                    </td>
                    <td align="center" colspan="1">
                        <asp:Button ID="btnLimpiar" runat="server" Font-Bold="True" 
                            OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="style6" />
                    </td>
                </tr>
            </table>
            <div class="style7">
            <br class="style3" />
            <asp:Label ID="lblError" runat="server" CssClass="style3"></asp:Label>
            &nbsp;<br class="style3" />
            <br class="style3" />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" 
                    CssClass="style3">Volver</asp:LinkButton>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
