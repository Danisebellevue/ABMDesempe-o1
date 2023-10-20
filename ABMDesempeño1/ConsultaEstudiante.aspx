<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaEstudiante.aspx.cs" Inherits="ABMDesempeño1.ConsultaEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="/Recursos/CSS/stylecss.css" rel="stylesheet"/>
</head>
<body>
    <div class="form1">
    <form id="log" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el Apellido del estudiante"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
&nbsp;<br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Retornar</asp:HyperLink>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" DeleteCommand="DELETE FROM [Estudiantes] WHERE [idEstudiante] = @idEstudiante" InsertCommand="Select Nombre from Estudiantes where Apellido=@Apellido" SelectCommand="select Nombre from Estudiantes where Apellido=@Apellido" UpdateCommand="UPDATE [Estudiantes] SET [Apellido] = @Apellido, [Nombre] = @Nombre WHERE [idEstudiante] = @idEstudiante">
                <DeleteParameters>
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Apellido" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Apellido" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
   </div>
</body>
</html>
