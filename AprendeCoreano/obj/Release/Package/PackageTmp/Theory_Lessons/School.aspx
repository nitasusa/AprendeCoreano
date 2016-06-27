<%@ Page Title="Colegio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.School" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/School_Children.png" style="max-width: 400px"/>
    </div>
    <br /><br />
    <div>
        <table style="border:1px solid; margin:0 auto">
            <tr>
                <td>
                    <b>Colegio</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>학교</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Aula</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>교실</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Estudiante</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>학생</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Profesor</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>선생님</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Libro</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>책</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Lápiz</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>연필</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cuaderno</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>공책</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Tiza</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>분필</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Bolígrafo</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>볼펜</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Goma</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>지우개</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Pizarra</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>칠판</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Escritorio, pupitre</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>책상</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Silla</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>의자</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Ordenador</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>컴퓨터</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Reloj</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>시계</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Gafas</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>안경</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Sombrero</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>모자</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Amigo</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>친구</b>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/PersonalPronouns"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/WhQuestions"/>
    </div>
</asp:Content>
