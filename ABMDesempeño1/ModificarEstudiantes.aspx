<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarEstudiantes.aspx.cs" Inherits="ABMDesempeño1.ModificarEstudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="/Recursos/CSS/stylecss.css" rel="stylesheet"/>
</head>
<body> 
    <div class="form1"> 
    <form id="log" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el apellido"></asp:Label>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="145px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" Width="111px" />
&nbsp;<br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" DeleteCommand="DELETE FROM Estudiantes WHERE Apellido = @Apellido" InsertCommand="select Nombre from Estudiantes where Apellido=@Apellido
UPDATE Estudiantes SET Nombre = @Nombre WHERE (Apellido = @Apellido) 
INSERT INTO [Estudiantes] ([Apellido], [Nombre]) VALUES (@Apellido, @Nombre)" SelectCommand="SELECT Nombre FROM Estudiantes where Apellido=@Apellido" UpdateCommand="UPDATE Estudiantes SET Nombre = @Nombre WHERE (Apellido = @Apellido)">
                <DeleteParameters>
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Apellido" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Apellido" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Nombre" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" Width="111px" />
&nbsp;<br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Retornar</asp:HyperLink>
            <br />
        </div>
    </form>
   </div>
</body>
</html>
