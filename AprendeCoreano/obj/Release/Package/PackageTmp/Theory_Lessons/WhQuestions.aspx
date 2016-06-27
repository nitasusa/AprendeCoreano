<%@ Page Title="Particulas interrogativas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhQuestions.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.WhQuestions" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/Wh_Questions.png" style="max-width: 400px"/>
    </div>
    <br /><br />
    <div>
        <table style="border:1px solid; margin:0 auto">
            <tr>
                <td>
                    <b>Quién</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>누구</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Qué</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>무엇</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Dónde</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>어디(에)</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cuándo</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>언제</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cuánto</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>얼마나</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cómo</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>어떻게</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Por qué</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>왜</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cuál</b>
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    <b>어느</b>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/School"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Demonstrative"/>
    </div>
</asp:Content>
