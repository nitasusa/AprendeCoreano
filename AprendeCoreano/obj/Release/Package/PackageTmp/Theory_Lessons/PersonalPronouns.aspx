<%@ Page Title="Pronombres Personales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalPronouns.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.PersonalPronouns" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> y Sufijo Nominativo.</h2>
    <br />
    <div>
        <p><b style="text-decoration:underline; color:orange">PRONOMBRES PERSONALES:</b></p>
        <table style="text-align:center">
            <tr>
                <td>

                </td>
                <td style="border:1px solid">
                    <b>Singular</b>
                </td>
                <td style="border:1px solid">
                    <b>Plural</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>1ª Persona</b>
                </td>
                <td style="border:1px solid">
                    <b>나 / 저</b>
                </td>
                <td style="border:1px solid">
                    <b>우리(들) / 저희(들)</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>2ª Persona</b>
                </td>
                <td style="border:1px solid">
                    <b>너 / 당신</b>
                </td>
                <td style="border:1px solid">
                    <b>너희(들) / 당신들</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>3ª Persona</b>
                </td>
                <td style="border:1px solid">
                    <b>그 / 그녀</b>
                </td>
                <td style="border:1px solid">
                    <b>그들 / 그녀들</b>
                </td>
            </tr>
        </table>
        <br />
        <p><b style="text-decoration:underline; color:orange">SUFIJO NOMINATIVO: 는/은</b></p>
        <p>Este sufijo define al sujeto.</p>
        <p>은: Se le añade cuando la palabra termina en consonante, como 그들은.</p>
        <p>는: Se le añade cuando la palabra termina en vocal, como 나는.</p>
        <br /><br />
        <table>
            <tr>
                <td>
                    <b>Él</b> es Pedro.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>그는</b>  페드로 입니다.
                </td>
            </tr>
            <tr>
                <td>
                    <b>Yo</b> soy un estudiante.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>저는</b>  학생입니다.
                </td>
            </tr>
            <tr>
                <td>
                    <b>Ellos</b> son profesores.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>그들은</b>  선생님입니다.
                </td>
            </tr>
            <tr>
                <td>
                    <b>Yo</b> estoy en el aula.
                </td>
                <td style="min-width:50px"></td>
                <td>
                    <b>나는</b> 교실에있어요.
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/VerbToBe"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/School"/>
    </div>
</asp:Content>
