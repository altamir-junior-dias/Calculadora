<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Cacluladora._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script language="javascript" type="text/javascript">
        var numeroAtual = "";
        var numeroAnterior = "";
        var operacao = "";
        
        function reiniciar() {
            numeroAtual = "";
            numeroAnterior = "";
            operacao = "";

            document.getElementById("resultado").value = numeroAtual;
        }

        function numero(numero) {
            numeroAtual = numeroAtual.concat(numero);

            document.getElementById("resultado").value = numeroAtual;
        }

        function fOperacao(oper) {
            numeroAnterior = numeroAtual;
            numeroAtual = "";

            operacao = oper;
        }

        function fResultado() {
            if (operacao == "+")
                numeroAtual = parseFloat(numeroAnterior, 10) + parseFloat(numeroAtual, 10);
            else if (operacao == "-")
                numeroAtual = parseFloat(numeroAnterior, 10) - parseFloat(numeroAtual, 10);
            else if (operacao == "*")
                numeroAtual = parseFloat(numeroAnterior, 10) * parseFloat(numeroAtual, 10);
            else if (operacao == "/")
                numeroAtual = parseFloat(numeroAnterior, 10) / parseFloat(numeroAtual, 10);

            document.getElementById("resultado").value = numeroAtual;
        }
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <table>
       <tr>
           <td colspan="5"><input type="text" id="resultado"/></td>
       </tr>
       <tr>
           <td><input type="button" value="1" onclick="numero('1')"/></td>
           <td><input type="button" value="2" onclick="numero('2')"/></td>
           <td><input type="button" value="3" onclick="numero('3')"/></td>
           <td colspan="2"><input type="button" value="+" class="tam2" onclick="fOperacao('+')"/></td>
       </tr>
       <tr>
           <td><input type="button" value="4" onclick="numero('4')"/></td>
           <td><input type="button" value="5" onclick="numero('5')"/></td>
           <td><input type="button" value="6" onclick="numero('6')"/></td>
           <td><input type="button" value="-" onclick="fOperacao('-')"/></td>
           <td><input type="button" value="/" onclick="fOperacao('/')"/></td>
       </tr>
       <tr>
           <td><input type="button" value="7" onclick="numero('7')"/></td>
           <td><input type="button" value="8" onclick="numero('8')"/></td>
           <td><input type="button" value="9" onclick="numero('9')"/></td>
           <td><input type="button" value="*" onclick="fOperacao('*')"/></td>
           <td><input type="button" value="+/-"/></td>
       </tr>
       <tr>
           <td><input type="button" value="CE" onclick="reiniciar()"/></td>
           <td><input type="button" value="0" onclick="numero('0')"/></td>
           <td><input type="button" value="."/></td>
           <td colspan="2"><input type="button" value="=" class="tam2" onclick="fResultado()"/></td>
       </tr>
   </table>
</asp:Content>
