<%@ Page Title="Terminación Verbal 'ser'" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerbToBe.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.VerbToBe" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p>
            Aunque esta terminación se clasifica gramaticalmente como una desinencia, su función se corresponde con la del verbo SER español.
        </p>
        <br />
        <table style="text-align:center">
            <tr>
                <td style="background-color:lavenderblush; border:1px solid">
                    <b>이다 : SER</b>
                </td>
                <td style="border:1px solid">
                    <b>Afirmativa</b>
                </td>
                <td style="border:1px solid">
                    <b>Interrogativa</b>
                </td>
                <td style="border:1px solid">
                    <b>Negativa</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>Muy formal</b>
                </td>
                <td style="border:1px solid">
                    <b>입니다</b>
                </td>
                <td style="border:1px solid">
                    <b>입니까?</b>
                </td>
                <td style="border:1px solid">
                    <b>아닙니다</b>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid">
                    <b>Formal</b>
                </td>
                <td style="border:1px solid">
                    <b>이에요</b>
                </td>
                <td style="border:1px solid">
                    <b>이에요?</b>
                </td>
                <td style="border:1px solid">
                    <b>아니에요</b>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
                    Yo <b>soy</b> María
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    나는 마리아<b>입니다</b>
                </td>
            </tr>
            <tr>
                <td>
                    Él <b>es</b> médico
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    그는 의사<b>입니다</b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Es</b> un árbol
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    나무<b>이에요</b>
                </td>
            </tr>
            <tr>
                <td>
                    ¿Quién <b>es</b>?
                </td>
                <td style="min-width:50px;"></td>
                <td>
                    누구<b>입니까?</b>
                </td>
            </tr>
        </table>
    </div>
    <br />    
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HangulWriting"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/PersonalPronouns"/>
    </div>
</asp:Content>
