<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MantenimientoSeccion.aspx.cs" Inherits="MantenimientoSeccion" %>

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
        }
        .style5
        {
            font-family: Calibri;
            font-size: medium;
        }
    </style>
</head>
<body style="height: 306px; background-color: #FFFFCC;">
    <form id="form2" runat="server">
    <div style="height: 301px; background-color: #CCCCCC">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="text-align: center">
            <p style="margin-left: 240px">
            <b style="font-family: 'Century Gothic'; text-decoration: underline; background-color: #FFFFCC">Mantenimiento Seccion<br />
            <br />
            </b>
            </p>
            <table>
                <tr>
                    <td class="style1">
                        Código Interno:</td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="txtCodIntS" runat="server" CssClass="style5"></asp:TextBox>
                    </td>
                    <td style="width: 100px; height: 21px">
                        <asp:Button ID="btnBuscar" runat="server" Font-Bold="True" 
                            OnClick="btnBuscar_Click" Text="Buscar" CssClass="style5" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Nombre:</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="style5"></asp:TextBox>
                    </td>
                    <td style="width: 100px" class="style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                    </td>
                    <td align="center" style="width: 100px" class="style5">
                        &nbsp;</td>
                    <td align="center" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnAgregar" runat="server" Font-Bold="True" 
                            OnClick="btnAgregar_Click" Text="Agregar" CssClass="style5" />
                        <asp:Button ID="BtnModificar" runat="server" Enabled="False" Font-Bold="True" 
                            OnClick="BtnModificar_Click" Text="Modificar" CssClass="style5" />
                        <asp:Button ID="btnBaja" runat="server" Enabled="False" Font-Bold="True" 
                            OnClick="btnBaja_Click" Text="Eliminar" CssClass="style5" />
                    </td>
                    <td align="center" colspan="1">
                        <asp:Button ID="btnLimpiar" runat="server" Font-Bold="True" 
                            OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="style5" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblError" runat="server" CssClass="style3"></asp:Label>
            &nbsp;<br class="style3" />
            <br class="style3" />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" 
                CssClass="style3">Volver</asp:LinkButton>
        </div>
    
    </div>
    </form>
</body>
</html>
