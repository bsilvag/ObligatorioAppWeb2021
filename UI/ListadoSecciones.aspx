<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListadoSecciones.aspx.cs" Inherits="ListadoSecciones" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Century Gothic";
        }
        .style2
        {
            font-family: Calibri;
        }
        .nuevoEstilo1
        {
            list-style-type: lower-latin;
            background-color: #333333;
        }
        .style3
        {
            font-family: Calibri;
            background-color: #FFFF99;
        }
        .style4
        {
            background-color: #FFFF99;
        }
    </style>
    </head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <table style="width:100%; background-color: #FFFF99;">
        <tr>
            <td colspan="3" class="style4" style="text-align: center">
                <strong>
                <span style="font-size: large; text-decoration: underline; text-align: center;" 
                    class="style1">
                Listado de Secciones</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:20%;" class="style3">
                &nbsp;</td>
            <td style="width:60%;" class="style4">
                <asp:GridView ID="LSecciones" runat="server" AutoGenerateSelectButton="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="LSecciones_SelectedIndexChanged" Width="518px" 
                    style="font-family: Calibri; background-color: #3366FF">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
            <td style="width:20%;" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="style4" style="text-align: center">
                <asp:Label ID="lblError" runat="server" CssClass="style2"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="style3" style="text-align: center">
                <strong><span class="style2">Noticias de: </span>
                <asp:Label ID="lblSecciones" runat="server" CssClass="style2"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:20%;" class="style3">
                &nbsp;</td>
            <td style="width:60%;" class="style4">
                <asp:GridView ID="LSeccionesN" runat="server" CellPadding="4" 
                    GridLines="None" 
                    onselectedindexchanged="LSecciones_SelectedIndexChanged" Width="518px" 
                    CssClass="nuevoEstilo1" ForeColor="#333333" style="font-family: Calibri">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
            <td style="width:20%;" class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
        </p>
    </form>
</body>
</html>
