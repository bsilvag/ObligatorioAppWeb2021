<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarNoticiaNacional.aspx.cs" Inherits="AgregarNoticiaNacional" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            font-family: "Century Gothic";
        }
        .style2
        {
            font-family: Calibri;
        }
        .style3
        {
            font-family: "Century Gothic";
        }
        .style4
        {
            font-family: Calibri;
            background-color: #FFCC99;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div style="height: 713px; background-color: #FFFFFF">
    
        &nbsp;<div style="text-align: center">
            <span class="style1"><strong>Agregar Noticia Nacional</strong></span><strong><br 
                class="style3" />
            </strong>
            <br />
            <table style="background-color: #FFCC99">
                <tr>
                    <td style="width: 146px" class="style2">
                        Periodista:</td>
                    <td style="width: 151px">
                        <asp:DropDownList ID="cboPeriodista" runat="server" Width="176px" 
                            CssClass="style2">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style2">
                        Fecha de la Noticia</td>
                    <td style="width: 151px">
                        <asp:Calendar ID="clnFecha" runat="server" BackColor="White" 
                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                            ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth">
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                                VerticalAlign="Bottom" />
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style2">
                        Resumen:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtResumen" runat="server" Width="470px" CssClass="style2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style2">
                        Contenido:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtContenido" runat="server" Height="167px" Width="468px" 
                            CssClass="style2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px; " class="style4">
                        Título:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtTitulo" runat="server" CssClass="style2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style2">
                        Seccion:</td>
                    <td style="width: 151px">
                        <asp:DropDownList ID="cboSeccion" runat="server" Width="176px" 
                            CssClass="style2">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px">
                        &nbsp;</td>
                    <td style="width: 151px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 26px">
                        <asp:Button ID="btnAgregar" runat="server" Font-Bold="True" 
                            OnClick="btnAgregar_Click" Text="Agregar" />
                    </td>
                </tr>
            </table>
        </div>
        &nbsp;
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
