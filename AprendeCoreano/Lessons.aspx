<%@ Page Title="Lecciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lessons.aspx.cs" Inherits="AprendeCoreano.Lessons" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        En estas lecciones aprenderás algunos de los conceptos fundamentales.
    </h3>
    <br />
    <div>
        <asp:BulletedList ID="blistLecciones" runat="server" DisplayMode="HyperLink" BulletStyle="Numbered" FirstBulletNumber="0">
            <asp:ListItem Value="~/Theory_Lessons/Lesson0">Apuntes esenciales antes de empezar</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/HangulAlphabet">Alfabeto Coreano (Hangul)</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/HangulWriting">Estructura de la estritura en Hangul</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/VerbToBe">Terminación verbal "ser"</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/PersonalPronouns">Pronombres personales y sufijo nominativo</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/School">Colegio</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/WhQuestions">Partículas interrogativas</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Demonstrative">Demostrativos</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/HumanBody">Partes del cuerpo</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Possessive">Posesivos</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Family">Familia</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/CountriesLanguages">Países e Idiomas</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/ConversationI">Conversación I</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/VerbToBeII">Terminación verbal "estar"/"haber"</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Locations">Posiciones y lugares</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Colors">Colores</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Clothes">Prendas de vestir</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/Numbers">Números</asp:ListItem>
            <asp:ListItem Value="~/Theory_Lessons/ConversationII">Conversación II</asp:ListItem>
        </asp:BulletedList>
    </div>
</asp:Content>
