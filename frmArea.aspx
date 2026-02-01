<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmArea.aspx.cs" Inherits="AreaTriangulo.frmArea2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Area del Triangulo</title>
    <style type="text/css">
        .PnlDatosGeneral {
            position: absolute;
            margin-left: 375px;
            Margin-top: 317px;
        }

        .LblBase {
            position: absolute;
            margin-left: 14px;
            margin-top: 90px;
        }

        .LblAltura {
            position: absolute;
            margin-left: 14px;
            margin-top: 140px
        }

        .LblLetrero {
            position: absolute;
            margin-left: 155px;
            margin-top: 7px;
        }

        .TxtBase {
            position: absolute;
            margin-left: 168px;
            margin-top: 48px;
            text-align: right;
        }

        .TxtAltura {
            position: absolute;
            margin-left: 168px;
            margin-top: 98px;
            text-align: right;
        }



        BtnCalcular {
            position: absolute;
            margin-left: 414px;
            margin-top: 55px;
        }

        .BtnLimpiar {
            position: absolute;
            margin-left: 414px;
            margin-top: 95px;
        }

        .LblResultado {
            position: absolute;
            margin-left: 14px;
            margin-top: 155px;
        }

        .LblResultado2 {
            position: absolute;
            margin-left: 136px;
            margin-top: 155px;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="PnlDatosGeneral" BorderColor="Black" BorderStyle="Solid" Width="495px" Height="240px" BackColor="#33CCFF" CssClass="PnlDatosGeneral" runat="server">
        
                <asp:Label ID="LblBase" Font-Bold="true" CssClass="LblBase" runat="server" Text="Introduzca la base"></asp:Label>
                <asp:Label ID="LblAltura" runat="server" Text="Introduzca la altura"></asp:Label>
            
                <asp:Panel ID="PnlLetreto" BorderColor="Black" BorderStyle="Solid" Width="495px" Height="40px" CssClass="PnlDatosGeneral" runat="server"></asp:Panel>
                <asp:Label ID="LblLetrero" Font-Bold="true" Font-Size="X-Large" CssClass="LblLetrero" runat="server" Text="Area Triangulo"></asp:Label>
            
                <asp:Label ID="LblResultado" Font-Bold="true" Font-Size="25px" runat="server" Text="Resultado"></asp:Label>
                <asp:Label ID="LblResultado2" Font-Bold="true" Font-Size="25px" BackColor="#66CCFF" runat="server" Text="---"></asp:Label>
            
                <asp:TextBox ID="TxtBase" Font-Bold="true" CssClass="TxtBase" ForeColor="#0066FF" Font-Size="12" Width="175px" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                <asp:TextBox ID="TxtAltura" Font-Bold="true" CssClass="TxtAltura" ForeColor="#0066FF" Font-Size="12" Width="175px" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
           
                <asp:Button ID="BtnCalcular" Text="Calcular" Font-Bold="true" CssClass="BtnCalcular" runat="server" />
                <asp:Button ID="BtnLimpiar" Text="Limpiar" Font-Bold="true" CssClass="BtnLimpiar" Width="69px" runat="server" />    

            </asp:Panel>
        </div>
    </form>
</body>
</html>
