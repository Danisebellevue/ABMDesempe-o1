<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ABMDesempeño1.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="/Recursos/CSS/stylecss.css" rel="stylesheet"/>
    </head>
<body> 
    <div class="form1" style="text-decoration: none">
    <form id="log" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaEstudiante.aspx">AltaEstudiante</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultaEstudiante.aspx">ConsultaEstudiante</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BajasEstudiante.aspx">BajasEstudiante</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ModificarEstudiantes.aspx">ModificarEstudiantes</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/GestiónMaterias.aspx">GestiónMaterias</asp:HyperLink></div>
        <div>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/GestiónCalificación.aspx">GestiónCalificaciones</asp:HyperLink></div>
    </form>
   </div>
</body>
</html>
