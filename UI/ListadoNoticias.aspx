<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListadoNoticias.aspx.cs" Inherits="ListadoNoticias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            background-color: #FFFF99;
        }
        .style2
        {
            font-family: "Century Gothic";
            background-color: #FFFF99;
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
    <div class="style1">
    
        <span class="style4">&nbsp;</span><div style="text-align: center">
            <table style="width:100%;">
                <tr>
                    <td colspan="4">
                        <strong><span style="font-size: large; text-decoration: underline" 
                            class="style2">Listado de 
                        Noticias</span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="width:50%;">
                        <span class="style3">Seleccione:
                        </span>
                        <asp:DropDownList ID="DdlTipo" runat="server" CssClass="style3">
                            <asp:ListItem>Listar todas las Noticias</asp:ListItem>
                            <asp:ListItem>Listar todas las Noticias Nacionales</asp:ListItem>
                            <asp:ListItem>Listar todas las Noticias Internacionales</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2" style="width:50%;">
                        <asp:Button ID="BtnListar" runat="server" OnClick="BtnListar_Click" 
                            Text="Listar" CssClass="style3" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width:20%;" class="style3">
                        &nbsp;</td>
                    <td colspan="2" style="width:60%;">
                        <asp:GridView ID="GvNoticias" runat="server" CellPadding="4" 
                            ForeColor="#333333" GridLines="None" Width="518px" 
                            style="font-family: Calibri">
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
                    <td style="width:20%;" class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" class="style4">
                        <asp:Label ID="lblError" runat="server" CssClass="style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="style4">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" 
                            CssClass="style3">Volver</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <br class="style4" />
        <br class="style4" />
        <br class="style4" />
        <br class="style4" />
    
    </div>
    </form>
</body>
</html>
