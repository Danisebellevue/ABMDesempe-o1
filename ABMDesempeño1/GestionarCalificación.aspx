<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionarCalificación.aspx.cs" Inherits="ABMDesempeño1.GestionarCalificación" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calificación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link href="/Recursos/CSS/stylecss.css" rel="stylesheet"/>
</head>
<body>
    <div class="form1">
    <form id="log" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Atrás</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idCali" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="631px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="idCali" HeaderText="idCali" InsertVisible="False" ReadOnly="True" SortExpression="idCali" />
                    <asp:BoundField DataField="idEstudiante" HeaderText="idEstudiante" SortExpression="idEstudiante" />
                    <asp:BoundField DataField="idMateria" HeaderText="idMateria" SortExpression="idMateria" />
                    <asp:BoundField DataField="int" HeaderText="int" SortExpression="int" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Expr1" HeaderText="Nombre Estudiante" SortExpression="Expr1" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" DeleteCommand="DELETE FROM [Calificacion] WHERE [idCali] = @idCali" InsertCommand="INSERT INTO [Calificacion] ([idEstudiante], [idMateria], [int]) VALUES (@idEstudiante, @idMateria, @int)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT Calificacion.idCali, Calificacion.idEstudiante, Calificacion.idMateria, Calificacion.int, Materias.Nombre, Estudiantes.Apellido, Estudiantes.Nombre AS Expr1 FROM Calificacion INNER JOIN Materias ON Calificacion.idMateria = Materias.idMateria INNER JOIN Estudiantes ON Calificacion.idEstudiante = Estudiantes.idEstudiante" UpdateCommand="UPDATE [Calificacion] SET [idEstudiante] = @idEstudiante, [idMateria] = @idMateria, [int] = @int WHERE [idCali] = @idCali">
                <DeleteParameters>
                    <asp:Parameter Name="idCali" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                    <asp:Parameter Name="idMateria" Type="Int32" />
                    <asp:Parameter Name="int" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                    <asp:Parameter Name="idMateria" Type="Int32" />
                    <asp:Parameter Name="int" Type="Int32" />
                    <asp:Parameter Name="idCali" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
        </div>
</body>
</html>
