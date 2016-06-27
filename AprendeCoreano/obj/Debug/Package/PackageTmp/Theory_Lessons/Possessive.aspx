<%@ Page Title="Posesivos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Possessive.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Possessive" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p><b style="text-decoration:underline; color:orange">ADJETIVOS POSESIVOS:</b></p>
        <table style="text-align:center">
            <tr>
                <td></td>
                <td style="border:1px solid"><b>Singular</b></td>
                <td style="border:1px solid"><b>Plural</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>1ª Persona</b></td>
                <td style="border:1px solid"><b>내 / 제</b></td>
                <td style="border:1px solid"><b>우리 / 저희</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>2ª Persona</b></td>
                <td style="border:1px solid"><b>네 / 당신의</b></td>
                <td style="border:1px solid"><b>너희 / 당신들의</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>3ª Persona</b></td>
                <td style="border:1px solid"><b>그의 / 그녀의</b></td>
                <td style="border:1px solid"><b>그들의 / 그녀들의</b></td>
            </tr>
        </table>
        <br /><br />
        <p><b style="text-decoration:underline; color:orange">PRONOMBRES POSESIVOS:</b></p>
        <table style="text-align:center">
            <tr>
                <td></td>
                <td style="border:1px solid"><b>Singular</b></td>
                <td style="border:1px solid"><b>Plural</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>1ª Persona</b></td>
                <td style="border:1px solid"><b>나의 것 / 내 것</b></td>
                <td style="border:1px solid"><b>우리 것 / 저희것</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>2ª Persona</b></td>
                <td style="border:1px solid"><b>너의 것 / 네 것</b></td>
                <td style="border:1px solid"><b>너희것 / 당신들의것</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>3ª Persona</b></td>
                <td style="border:1px solid"><b>그의 것 / 그녀의 것</b></td>
                <td style="border:1px solid"><b>그들의것 / 그녀들의 것</b></td>
            </tr>
        </table>
        <br /><br />
        <p><b style="text-decoration:underline; color:orange">SUFIJO GENITIVO POSESIVO: 의</b></p>
        <p><b>“의”</b> equivale a la preposición “de”.</p>
        <br />
        <p>Ejemplos:</p>
        <table>
            <tr>
                <td>Aquel es <b>su</b> ordenador (de ellos).</td>
                <td style="min-width:50px"></td>
                <td>저것은  <b>그들의</b>  컴퓨터입니다.</td>
            </tr>
            <tr>
                <td>Éste es <b>mi</b> cuaderno.</td>
                <td style="min-width:50px"></td>
                <td>이것은 <b>내</b> 공책입니다.</td>
            </tr>
            <tr>
                <td>Esto es <b>mío</b>.</td>
                <td style="min-width:50px"></td>
                <td>이것은 <b>나의 것</b>.</td>
            </tr>
            <tr>
                <td>Aquel reloj es <b>suyo</b> (de él).</td>
                <td style="min-width:50px"></td>
                <td>저 시계는 <b>그의 것</b>입니다.</td>
            </tr>
            <tr>
                <td>Esta goma es <b>de Pedro</b>.</td>
                <td style="min-width:50px"></td>
                <td>이 지우개는  <b>페드로의 것</b>입니다.</td>
            </tr>
        </table>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HumanBody"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Family"/>
    </div>
</asp:Content>
