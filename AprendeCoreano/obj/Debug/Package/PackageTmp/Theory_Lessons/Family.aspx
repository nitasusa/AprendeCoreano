<%@ Page Title="Familia" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Family.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Family" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/Family.png" style="max-width: 300px"/>
    </div>
    <br /><br />
    <div>
        <table style="border:1px solid; margin:0 auto">
            <tr>
                <td><b>Familia</b></td>
                <td style="min-width:50px;"></td>
                <td><b>가족</b></td>
            </tr>
            <tr>
                <td><b>Abuela</b></td>
                <td style="min-width:50px;"></td>
                <td><b>할머니</b></td>
            </tr>
            <tr>
                <td><b>Abuelo</b></td>
                <td style="min-width:50px;"></td>
                <td><b>할아버지</b></td>
            </tr>
            <tr>
                <td><b>Madre</b></td>
                <td style="min-width:50px;"></td>
                <td><b>어머니</b></td>
            </tr>
            <tr>
                <td><b>Mamá</b></td>
                <td style="min-width:50px;"></td>
                <td><b>엄마</b></td>
            </tr>
            <tr>
                <td><b>Padre</b></td>
                <td style="min-width:50px;"></td>
                <td><b>아버지</b></td>
            </tr>
            <tr>
                <td><b>Papá</b></td>
                <td style="min-width:50px;"></td>
                <td><b>아빠</b></td>
            </tr>
            <tr>
                <td><b>Esposo</b></td>
                <td style="min-width:50px;"></td>
                <td><b>남편</b></td>
            </tr>
            <tr>
                <td><b>Esposa</b></td>
                <td style="min-width:50px;"></td>
                <td><b>아내</b></td>
            </tr>
            <tr>
                <td><b>Hijo</b></td>
                <td style="min-width:50px;"></td>
                <td><b>아들</b></td>
            </tr>
            <tr>
                <td><b>Hija</b></td>
                <td style="min-width:50px;"></td>
                <td><b>딸</b></td>
            </tr>
            <tr>
                <td><b>Hermana mayor (chica a chica)</b></td>
                <td style="min-width:50px;"></td>
                <td><b>언니</b></td>
            </tr>
            <tr>
                <td><b>Hermana mayor (chico a chica)</b></td>
                <td style="min-width:50px;"></td>
                <td><b>누나</b></td>
            </tr>
            <tr>
                <td><b>Hermano mayor (chica a chico)</b></td>
                <td style="min-width:50px;"></td>
                <td><b>오빠</b></td>
            </tr>
            <tr>
                <td><b>Hermano mayor (chico a chico)</b></td>
                <td style="min-width:50px;"></td>
                <td><b>형</b></td>
            </tr>
            <tr>
                <td><b>Hermano/a menor</b></td>
                <td style="min-width:50px;"></td>
                <td><b>동생</b></td>
            </tr>
            <tr>
                <td><b>Tía materna</b></td>
                <td style="min-width:50px;"></td>
                <td><b>이모</b></td>
            </tr>
            <tr>
                <td><b>Tía paterna</b></td>
                <td style="min-width:50px;"></td>
                <td><b>고모</b></td>
            </tr>
            <tr>
                <td><b>Tío</b></td>
                <td style="min-width:50px;"></td>
                <td><b>삼촌</b></td>
            </tr>
            <tr>
                <td><b>Primo/a</b></td>
                <td style="min-width:50px;"></td>
                <td><b>사촌</b></td>
            </tr>
            <tr>
                <td><b>Matrimonio</b></td>
                <td style="min-width:50px;"></td>
                <td><b>부부</b></td>
            </tr>
            <tr>
                <td><b>Padres</b></td>
                <td style="min-width:50px;"></td>
                <td><b>부모님</b></td>
            </tr>
            <tr>
                <td><b>Hermanos</b></td>
                <td style="min-width:50px;"></td>
                <td><b>형제</b></td>
            </tr>
            <tr>
                <td><b>Hermanas</b></td>
                <td style="min-width:50px;"></td>
                <td><b>자매</b></td>
            </tr>
            <tr>
                <td><b>Hijos</b></td>
                <td style="min-width:50px;"></td>
                <td><b>자식</b></td>
            </tr>
            <tr>
                <td><b>Nieto</b></td>
                <td style="min-width:50px;"></td>
                <td><b>손자</b></td>
            </tr>
            <tr>
                <td><b>Nieta</b></td>
                <td style="min-width:50px;"></td>
                <td><b>손녀</b></td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Possessive"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/CountriesLanguages"/>
    </div>
</asp:Content>
