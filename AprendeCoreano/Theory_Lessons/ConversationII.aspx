<%@ Page Title="Conversación II" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConversationII.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.ConversationII" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/Conversations.jpg" style="max-width: 300px"/>
    </div>
    <br /><br />
    <div>
        <table style="margin:0 auto">
            <tr>
                <td></td>
                <td style="border:1px solid"><b>Informal</b></td>
                <td style="border:1px solid"><b>Formal</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Hola</b></td>
                <td style="border:1px solid"><b>안녕하세요</b></td>
                <td style="border:1px solid"><b>안녕하십니까</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Hola, adiós</b></td>
                <td style="border:1px solid"><b>안녕</b></td>
                <td style="border:1px solid"></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Adiós (cuando te quedas)</b></td>
                <td style="border:1px solid"><b>안녕히 가세요</b></td>
                <td style="border:1px solid"><b>안녕히 가십시오</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Adiós (cuando te vas)</b></td>
                <td style="border:1px solid"><b>안녕히 계세요</b></td>
                <td style="border:1px solid"><b>안녕히 계십시오</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Hasta luego</b></td>
                <td style="border:1px solid"><b>나중에 보자</b></td>
                <td style="border:1px solid"><b>나중에 봅시다</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Gracias</b></td>
                <td style="border:1px solid"><b>고마워</b></td>
                <td style="border:1px solid"><b>감사합니다</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Entendido</b></td>
                <td style="border:1px solid"><b>알았어</b></td>
                <td style="border:1px solid"><b>알았습니다</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Lo siento</b></td>
                <td style="border:1px solid"><b>미안해</b></td>
                <td style="border:1px solid"><b>죄송합니다</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>¿Cuántos años tienes?</b></td>
                <td style="border:1px solid"><b>몇 살이에요?</b></td>
                <td style="border:1px solid"><b>몇 살 입니까?</b></td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Numbers"/>
    </div>
</asp:Content>
