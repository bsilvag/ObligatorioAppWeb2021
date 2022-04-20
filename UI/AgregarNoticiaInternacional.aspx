<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarNoticiaInternacional.aspx.cs" Inherits="AgregarNoticiaInternacional" %>

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
            font-family: "Century Gothic";
            color: #FFCC99;
            background-color: #99CCFF;
        }
        .style3
        {
            font-family: Calibri;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style4
        {
            background-color: #99CCFF;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            background-color: #FFCC99;
        }
        .style7
        {
            font-family: Calibri;
            background-color: #FFCC99;
        }
        .style8
        {
            color: #FFCC99;
            background-color: #99CCFF;
        }
        .style9
        {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF" class="style5">
    
        <br class="style4" />
        <div style="text-align: center">
            <span class="style1"><strong><span class="style9">Agregar Noticia Internacional</span></strong></span><strong><br 
                class="style2" />
            </strong>
            <br class="style8" />
            <table style="background-color: #FFCC99">
                <tr>
                    <td style="width: 146px" class="style7">
                        Periodista:</td>
                    <td style="width: 151px">
                        <asp:DropDownList ID="cboPeriodista" runat="server" Width="176px" 
                            CssClass="style3">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style7">
                        País de Origen:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtPaisOrigen" runat="server" CssClass="style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style7">
                        Fecha de la Noticia</td>
                    <td style="width: 151px; background-color: #FFCC99;">
                        <asp:Calendar ID="clnFecha" runat="server" BackColor="White" 
                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                            ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth" 
                            onselectionchanged="clnFecha_SelectionChanged">
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
                    <td style="width: 146px" class="style7">
                        Resumen:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtResumen" runat="server" Width="470px" CssClass="style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style7">
                        Contenido:</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtContenido" runat="server" Height="167px" Width="468px" 
                            CssClass="style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style7">
                        Título</td>
                    <td style="width: 151px">
                        <asp:TextBox ID="txtTitulo" runat="server" CssClass="style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 146px" class="style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 26px" class="style6">
                        <asp:Button ID="btnAgregar" runat="server" Font-Bold="True" 
                            OnClick="btnAgregar_Click" Text="Agregar" CssClass="style3" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="style5">
            &nbsp;&nbsp;<asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
        <br />
            &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
        <br />
        <br />
    
        </div>
    
    </div>
    </form>
</body>
</html>
