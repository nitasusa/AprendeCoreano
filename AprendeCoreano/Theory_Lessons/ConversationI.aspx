<%@ Page Title="Conversacion I" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConversationI.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.ConversationI" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p><b>RESPUESTA AFIRMATIVA Y NEGATIVA</b></p>
        <br />
        <table style="text-align:center; font-size:20px">
            <tr>
                <td style="border:1px solid"><b>SÍ</b></td>
                <td style="border:1px solid"><b>네 / 예</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>NO</b></td>
                <td style="border:1px solid"><b>아니오</b></td>
            </tr>
        </table>
        <br /><br />
        <table>
            <tr>
                <td>¿Esto es un colegio?</td>
                <td style="min-width:50px;"></td>
                <td>여기가 학교입니까?</td>
            </tr>
            <tr>
                <td><b>Sí</b>, esto es un colegio.</td>
                <td style="min-width:50px;"></td>
                <td><b>네</b>, 여기가 학교입니다.</td>
            </tr>
            <tr>
                <td><b>No</b>, esto <b>no es</b> un colegio.</td>
                <td style="min-width:50px;"></td>
                <td><b>아니오</b>, 여기는 학교가<b>아닙니다</b>.</td>
            </tr>
            <tr>
                <td><b>No</b>, esto es un hospital.</td>
                <td style="min-width:50px;"></td>
                <td><b>아니오</b>, 여기는 병원입니다.</td>
            </tr>
            <tr>
                <td>¿Es María estudiante?</td>
                <td style="min-width:50px;"></td>
                <td>마리아는  학생입니까?</td>
            </tr>
            <tr>
                <td><b>Sí</b>, María es estudiante.</td>
                <td style="min-width:50px;"></td>
                <td><b>네</b>, 마리아는  학생입니다.</td>
            </tr>
            <tr>
                <td><b>No</b>, María <b>no es</b> estudiante.</td>
                <td style="min-width:50px;"></td>
                <td><b>아니오</b>, 마리아는 학생이<b>아닙니다</b>.</td>
            </tr>
            <tr>
                <td><b>No</b>, María es profesora.</td>
                <td style="min-width:50px;"></td>
                <td><b>아니오</b>, 마리아는  선생님입니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/CountriesLanguages"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/VerbToBeII"/>
    </div>
</asp:Content>
