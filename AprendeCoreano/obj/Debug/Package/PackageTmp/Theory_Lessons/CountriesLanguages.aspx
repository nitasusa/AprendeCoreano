<%@ Page Title="Países e Idiomas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CountriesLanguages.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.CountriesLanguages" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p><b style="text-decoration:underline; color:orange">PAÍS: (나라)</b></p>
        <br />
        <img src="Images/Countries.png" style="max-width: 400px"/>
        <br /><br /><br />
        <p><b style="text-decoration:underline; color:orange">IDIOMA: (언어)</b></p>
        <br />
        <table style="border:1px solid">
            <tr>
                <td><b>Coreano</b></td>
                <td style="min-width:50px;"></td>
                <td><b>한국어</b></td>
            </tr>
            <tr>
                <td><b>Español</b></td>
                <td style="min-width:50px;"></td>
                <td><b>스페인어</b></td>
            </tr>
            <tr>
                <td><b>Chino</b></td>
                <td style="min-width:50px;"></td>
                <td><b>중국어</b></td>
            </tr>
            <tr>
                <td><b>Francés</b></td>
                <td style="min-width:50px;"></td>
                <td><b>불어</b></td>
            </tr>
            <tr>
                <td><b>Japonés</b></td>
                <td style="min-width:50px;"></td>
                <td><b>일본어</b></td>
            </tr>
            <tr>
                <td><b>Inglés</b></td>
                <td style="min-width:50px;"></td>
                <td><b>영어</b></td>
            </tr>
            <tr>
                <td><b>Italiano</b></td>
                <td style="min-width:50px;"></td>
                <td><b>이탈리아어</b></td>
            </tr>
            <tr>
                <td><b>Alemán</b></td>
                <td style="min-width:50px;"></td>
                <td><b>독일어</b></td>
            </tr>
        </table>
        <br /><br />
        <table>
            <tr>
                <td>Young Ki es <b>(una persona) de Corea</b>.</td>
                <td style="min-width:50px;"></td>
                <td>영기는  <b>한국 사람</b>입니다.</td>
            </tr>
            <tr>
                <td>Esto es <b>Alemania</b>.</td>
                <td style="min-width:50px;"></td>
                <td>여기는 <b>독일</b>입니다.</td>
            </tr>
            <tr>
                <td>Ese idioma es <b>francés</b>.</td>
                <td style="min-width:50px;"></td>
                <td>그 언어는 <b>불어</b>입니다.</td>
            </tr>
            <tr>
                <td>Este idioma es <b>inglés</b>.</td>
                <td style="min-width:50px;"></td>
                <td>이 언어는 <b>영어</b>입니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Family"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/ConversationI"/>
    </div>
</asp:Content>
