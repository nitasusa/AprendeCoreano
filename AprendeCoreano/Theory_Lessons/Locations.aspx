<%@ Page Title="Posiciones y lugares" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Locations" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/Locations.png" style="max-width: 400px"/>
    </div>
    <br /><br />
    <div>
        <table style="border:1px solid; margin:0 auto">
            <tr>
                <td><b>Este</b></td>
                <td style="min-width:50px;"></td>
                <td><b>동</b></td>
            </tr>
            <tr>
                <td><b>Oeste</b></td>
                <td style="min-width:50px;"></td>
                <td><b>서</b></td>
            </tr>
            <tr>
                <td><b>Norte</b></td>
                <td style="min-width:50px;"></td>
                <td><b>북</b></td>
            </tr>
            <tr>
                <td><b>Sur</b></td>
                <td style="min-width:50px;"></td>
                <td><b>남</b></td>
            </tr>
            <tr>
                <td><b>La derecha</b></td>
                <td style="min-width:50px;"></td>
                <td><b>오른쯕</b></td>
            </tr>
            <tr>
                <td><b>La izquierda</b></td>
                <td style="min-width:50px;"></td>
                <td><b>왼쪽</b></td>
            </tr>
            <tr>
                <td><b>Detrás</b></td>
                <td style="min-width:50px;"></td>
                <td><b>뒤</b></td>
            </tr>
            <tr>
                <td><b>Delante</b></td>
                <td style="min-width:50px;"></td>
                <td><b>앞</b></td>
            </tr>
            <tr>
                <td><b>Al lado</b></td>
                <td style="min-width:50px;"></td>
                <td><b>옆</b></td>
            </tr>
            <tr>
                <td><b>Arriba</b></td>
                <td style="min-width:50px;"></td>
                <td><b>위</b></td>
            </tr>
            <tr>
                <td><b>Abajo</b></td>
                <td style="min-width:50px;"></td>
                <td><b>아래</b></td>
            </tr>
        </table>
        <br /><br />
        <table style="margin:0 auto">
            <tr>
                <td>La ventana está a <b>la derecha</b>.</td>
                <td style="min-width:50px;"></td>
                <td>창문은  <b>오른쯕에</b>있습니다.</td>
            </tr>
            <tr>
                <td>El bolso está <b>sobre</b> el escritorio.</td>
                <td style="min-width:50px;"></td>
                <td>가방이 책상<b>위에</b>있습니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/VerbToBeII"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Colors"/>
    </div>
</asp:Content>
