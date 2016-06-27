<%@ Page Title="Demostrativos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Demonstrative.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Demonstrative" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p><b style="text-decoration:underline; color:orange">ADJETIVOS DEMOSTRATIVOS:</b></p>
        <table>
            <tr>
                <td style="border:1px solid">
                    <b>Este/esta</b>
                </td>
                <td style="border:1px solid">
                    <b>이</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>Ese/esa</b>
                </td>
                <td style="border:1px solid">
                    <b>그</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>Aquel/aquella</b>
                </td>
                <td style="border:1px solid">
                    <b>저</b>
                </td>
            </tr>
        </table>
        <br /><br />
        <p><b style="text-decoration:underline; color:orange">PRONOMBRES DEMOSTRATIVOS:</b></p>
        <table>
            <tr>
                <td rowspan="3" style="border:1px solid"><b>Cosas:</b></td>
                <td style="border:1px solid"><b>이것</b></td>
                <td style="border:1px solid"><b>Éste/ésta/esto</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>그것</b></td>
                <td style="border:1px solid"><b>Ése/ésa</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>저것</b></td>
                <td style="border:1px solid"><b>Aquel/aquella/aquello</b></td>
            </tr>
            <tr>
                <td rowspan="3" style="border:1px solid"><b>Personas:</b></td>
                <td style="border:1px solid"><b>이 사람 / 분</b></td>
                <td style="border:1px solid"><b>Éste/ésta</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>그 사람 / 분</b></td>
                <td style="border:1px solid"><b>Ése/ésa</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>저 사람 / 분</b></td>
                <td style="border:1px solid"><b>Aquel/aquella</b></td>
            </tr>
        </table>
        <br /><br /><br />
        <table>
            <tr>
                <td>
                    ¿Qué es <b>esto</b>?
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>이것</b>은 무엇입니까?
                </td>
            </tr>
            <tr>
                <td>
                    <b>Esto</b> es un lápiz.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>이것</b>은  연필 입니다.
                </td>
            </tr>
            <tr>
                <td>
                    ¿Qué es <b>eso</b>?
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>그것</b>은  무엇입니까?
                </td>
            </tr>
            <tr>
                <td>
                    <b>Aquellos</b> zapatos son negros.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>저</b> 구두는 검정색입니다.
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/WhQuestions"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HumanBody"/>
    </div>
</asp:Content>
