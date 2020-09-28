<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conexion.aspx.cs" Inherits="PRueba_conexion.Conexion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 140px;
        }

        *{
         margin : 0;
         padding: 0;
         box-sizing: border-box;
     }
     body{
         background-color: #EEE8AA;
     }
     #head{
         width:100%;
         height:110px;
         background-color: #FFA500;
     }
     .menu-main{
    display: flex;
    justify-content: space-between;
    background: #3b5998;
    border-bottom: 1px solid #29487d;
    height: 45px;
}

        .menu-main a{
            flex: 1;
            font-family: arial;
            display: flex;
            color: #ffffff;
            text-decoration: none;
            font-size: 12px;
            font-weight: bold;    
            justify-content: center;
            align-items: center;
        }

        .menu-main a:hover{
            background: rgba(0,0,0, .1);
        }

        .menu-main a.active{
            background-color: #29487d;
        }

        @media (max-width: 768px) {

            .menu-main {
                height: auto;
                border-bottom: 0px;
                display: block;
            }

                .menu-main a {
                    height: 45px;
                    border-bottom: 1px solid #29487d;
                }
        }
    </style>
</head>
<body>
    <div>
         <nav class="menu-main">
                <a href="#">Home</a>
                <a href="#" class="active">Informes</a>
                <a href="#">Personalización</a>
                <a href="#">Administrador</a>
                <a href="#">Comentarios</a>
                <a href="#">Perfíl</a>
                <a href="#">Ayuda</a>
        </nav>
    </div>
    <form id="form1" runat="server">
     <div>
        <asp:GridView ID="gdvProducto" runat="server" AutoGenerateColumns="true" CellPadding="2">
            <AlternatingRowStyle BackColor="#0066FF" BorderStyle="Solid" />
            <HeaderStyle BackColor="#003399" ForeColor="White" />
        </asp:GridView>
    
    
         <br />
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="lblcodigo" runat="server" Text="Codigo"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
         <br />
         <br />
&nbsp;<br />
         <br />
         <br />
    
    
    </div>
    </form>
</body>
</html>
