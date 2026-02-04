<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmArea.aspx.cs" Inherits="AreaTriangulo.frmArea2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Areas Geometricas</title>
    <link href="css/Style.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="PnlDatosGeneral" BorderColor="Black" BorderStyle="Solid" BackColor="#33CCFF" CssClass="PnlDatosGeneral" runat="server">

                <asp:Panel ID="PnlOpciones" BorderColor="Black" BorderStyle="Solid" BackColor="#33CCFF" CssClass="PnlOpciones" runat="server">
                    <asp:Label ID="LblTextoOpciones" Font-Bold="true" CssClass="LblTextoOpciones" runat="server" Text="Seleccione una figura geometrica"></asp:Label>

                    <asp:Panel ID="PnlFiguras" BorderColor="Black" BorderStyle="Solid" BackColor="#33CCFF" CssClass="PnlFiguras" runat="server">
                        <asp:Image ID="ImgFigura" CssClass="ImgFigura" runat="server" />
                    </asp:Panel>

                    <asp:RadioButtonList ID="RbtnOpciones" CssClass="RbtnOpciones" AutoPostBack="true" runat="server" OnSelectedIndexChanged="RbtnOpciones_SelectedIndexChanged">
                        <asp:ListItem>Triangulo</asp:ListItem>
                        <asp:ListItem>Circulo</asp:ListItem>
                        <asp:ListItem>Cuadrado</asp:ListItem>
                    </asp:RadioButtonList>

                </asp:Panel>

                <asp:Label ID="LblLetreroSeleccion" Font-Bold="true" CssClass="LblLetreroSeleccion" runat="server"></asp:Label>

                <asp:Label ID="LblValor1" Font-Bold="true" CssClass="LblValor1" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="TxtValor1" Font-Bold="true" CssClass="TxtValor1" ForeColor="#0066FF" Font-Size="12" Width="175px" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                <asp:Label ID="LblValor2" Font-Bold="true" CssClass="LblValor2" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="TxtValor2" Font-Bold="true" CssClass="TxtValor2" ForeColor="#0066FF" Font-Size="12" Width="175px" AutoCompleteType="Disabled" runat="server"></asp:TextBox>

                <asp:Panel ID="PnlLetreto" BorderColor="Black" BorderStyle="Solid" CssClass="PnlLetrero" runat="server">
                    <asp:Label ID="LblLetrero" Font-Bold="true" Font-Size="X-Large" CssClass="LblLetrero" runat="server" Text="Areas Geometricas"></asp:Label>
                </asp:Panel>

                <asp:Label ID="LblResultado" Font-Bold="true" CssClass="LblResultado" Font-Size="25px" runat="server" Text="Resultado"></asp:Label>
                <asp:Label ID="LblResultado2" Font-Bold="true" CssClass="LblResultado2" Font-Size="25px" BackColor="#66CCFF" runat="server"></asp:Label>

                <asp:Button ID="BtnCalcular" Text="Calcular" Font-Bold="true" CssClass="BtnCalcular" runat="server" AutoPostBack="true" OnClick="BtnCalcular_Click" />
                <asp:Button ID="BtnLimpiar" Text="Limpiar" Font-Bold="true" CssClass="BtnLimpiar" Width="69px" runat="server" AutoPostBack="true" OnClick="BtnLimpiar_Click" />

                <asp:Label ID="LblMensajes" CssClass="LblMensajes" Font-Bold="true" Text="-" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
