<%@ Page Title="Números" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Numbers.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Numbers" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br /><br />
    <div>
        <table style="margin:0 auto">
            <tr>
                <td style="border:1px solid; color:orange"><b>Número</b></td>
                <td style="border:1px solid; color:orange"><b>Sustantivo</b></td>
                <td style="border:1px solid; color:orange"><b>Adjetivo</b></td>
            </tr>
            <tr>
                <td style="border:1px solid">Uno</td>
                <td style="border:1px solid">하나</td>
                <td style="border:1px solid">한</td>
            </tr>
            <tr>
                <td style="border:1px solid">Dos</td>
                <td style="border:1px solid">둘</td>
                <td style="border:1px solid">두</td>
            </tr>
            <tr>
                <td style="border:1px solid">Tres</td>
                <td style="border:1px solid">셋</td>
                <td style="border:1px solid">세</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cuatro</td>
                <td style="border:1px solid">넷</td>
                <td style="border:1px solid">네</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cinco</td>
                <td style="border:1px solid">다섯</td>
                <td style="border:1px solid">다섯</td>
            </tr>
            <tr>
                <td style="border:1px solid">Seis</td>
                <td style="border:1px solid">여섯</td>
                <td style="border:1px solid">여섯</td>
            </tr>
            <tr>
                <td style="border:1px solid">Siete</td>
                <td style="border:1px solid">일곱</td>
                <td style="border:1px solid">일곱</td>
            </tr>
            <tr>
                <td style="border:1px solid">Ocho</td>
                <td style="border:1px solid">여덟</td>
                <td style="border:1px solid">여덟</td>
            </tr>
            <tr>
                <td style="border:1px solid">Nueve</td>
                <td style="border:1px solid">아홉</td>
                <td style="border:1px solid">아홉</td>
            </tr>
            <tr>
                <td style="border:1px solid">Diez</td>
                <td style="border:1px solid">열</td>
                <td style="border:1px solid">열</td>
            </tr>
            <tr>
                <td style="border:1px solid">Veinte</td>
                <td style="border:1px solid">스물</td>
                <td style="border:1px solid">스무</td>
            </tr>
            <tr>
                <td style="border:1px solid">Treinta</td>
                <td style="border:1px solid">서른</td>
                <td style="border:1px solid">서른</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cuarenta</td>
                <td style="border:1px solid">마흔</td>
                <td style="border:1px solid">마흔</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cincuenta</td>
                <td style="border:1px solid">쉰</td>
                <td style="border:1px solid">쉰</td>
            </tr>
            <tr>
                <td style="border:1px solid">Sesenta</td>
                <td style="border:1px solid">예순</td>
                <td style="border:1px solid">예순</td>
            </tr>
            <tr>
                <td style="border:1px solid">Setenta</td>
                <td style="border:1px solid">일흔</td>
                <td style="border:1px solid">일흔</td>
            </tr>
            <tr>
                <td style="border:1px solid">Ochenta</td>
                <td style="border:1px solid">여든</td>
                <td style="border:1px solid">여든</td>
            </tr>
            <tr>
                <td style="border:1px solid">Noventa</td>
                <td style="border:1px solid">아흔</td>
                <td style="border:1px solid">아흔</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cien</td>
                <td style="border:1px solid">백</td>
                <td style="border:1px solid">백</td>
            </tr>
            <tr>
                <td style="border:1px solid">Mil</td>
                <td style="border:1px solid">천</td>
                <td style="border:1px solid">서른</td>
            </tr>
            <tr>
                <td style="border:1px solid">Un millón</td>
                <td style="border:1px solid">백만</td>
                <td style="border:1px solid">마흔</td>
            </tr>
            <tr>
                <td style="border:1px solid">Cero</td>
                <td style="border:1px solid">영</td>
                <td style="border:1px solid">영</td>
            </tr>
        </table>
        <br /><br />
        <table style="margin:0 auto">
            <tr>
                <td>¿Cuántos años tienes?</td>
                <td style="min-width:50px;"></td>
                <td>몇 살 입니까?</td>
            </tr>
            <tr>
                <td>Tengo <b>siete</b> años.</td>
                <td style="min-width:50px;"></td>
                <td><b>일곱</b> 살입니다.</td>
            </tr>
            <tr>
                <td>¿Qué hora es?</td>
                <td style="min-width:50px;"></td>
                <td>몇 시입니까?</td>
            </tr>
            <tr>
                <td>Son las <b>ocho</b>.</td>
                <td style="min-width:50px;"></td>
                <td><b>여덟</b> 시입니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Clothes"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/ConversationII"/>
    </div>
</asp:Content>
