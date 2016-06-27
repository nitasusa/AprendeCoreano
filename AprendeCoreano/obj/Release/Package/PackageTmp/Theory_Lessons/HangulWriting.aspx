<%@ Page Title="Escritura en Hangul" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HangulWriting.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.HangulWriting" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Estructura de la escritura en Hangul.</h2>
    <br />
    <div>
        <p>
            Las palabras escritas en Hangul están compuestas por <span style='color:orange'>sílabas</span>, y éstas constan a su vez de 
            <span style='color:orange'>tres partes: un sonido inicial, un sonido medio y por lo general un sonido final</span>.
        </p>
        <p>    
            Cada silaba se coloca en un recuadro imaginario ubicando la primera vocal o consonante en la parte superior izquierda del mismo. 
            Si la vocal que sigue a la primera letra es horizontal, se coloca debajo de ésta; si es vertical, a la derecha. 
            El sonido final (o última letra de la sílaba) debe ir debajo, siempre y cuando sea consonante.
        </p>
        <p>
            <b>Ejemplo:</b> Amor en coreano es Sa-rang, luego se escribe <b>사(sa)+랑(rang) = 사랑(sa-rang)</b>.
        </p>
        <p>
            <b>Para formar palabras hay que seguir <span style='color:orange; text-decoration:underline'>tres reglas básicas</span>:</b>
        </p>
        <asp:BulletedList ID="blistReglas" runat="server" DisplayMode="Text" BulletStyle="Square">
            <asp:ListItem>Toda palabra tiene que empezar con una consonante.</asp:ListItem>
            <asp:ListItem>Debe contener al menos una vocal y una consonante.</asp:ListItem>
            <asp:ListItem>Cada sílaba debe poder ser escrita en un cuadrado.</asp:ListItem>
        </asp:BulletedList>
        <p> 
            A fin de cumplir la primera regla, si se forma una sílaba con una sola vocal, siempre se le añade una <b>consonante muda</b> 
            al principio (ㅇ). Ej: 이, 우, 어…
        </p>
    </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HangulAlphabet"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/VerbToBe"/>
    </div>
</asp:Content>
