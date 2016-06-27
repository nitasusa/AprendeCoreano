<%@ Page Title="Apuntes esenciales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lesson0.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Lesson0" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Apuntes esenciales antes de empezar.</h2>
    <br />
    <div>
        <p>
            En la lengua coreana los <span style='color:orange'>sufijos</span> tienen un papel esencial definiendo el carácter gramatical 
            de cada componente de la oración (sujeto, complemento directo, indirecto…) además de realizar la función de la preposición en español. 
            Por lo tanto, en coreano <span style='color:orange'>no existen preposiciones</span> propiamente dichas.
        </p>
        <p>    
            El <span style='color:orange'>verbo va siempre al final de la oración</span>, independientemente de que la oración sea afirmativa, 
            negativa o interrogativa. Normalmente el orden en la oración es: <span style='color:orange'>Sujeto + Objeto + Verbo</span>
        </p>
        <p>
            Los verbos no se conjugan, por lo que <span style='color:orange'>los modos y tiempos verbales</span> se expresan mediante la terminación verbal.
        </p>
        <p>
            Los <span style='color:orange'>verbos ser (이다) y estar (있다)</span> no se clasifican gramaticalmente como un verbo sino como una 
            <span style='color:orange'>desinencia</span>.
        </p>
        <p> 
            En el coreano conviven <span style='color:orange'>tres registros</span> diferentes: <span style='color:orange'>muy formal</span>, 
            <span style='color:orange'>formal</span> (estándar) y <span style='color:orange'>coloquial</span>, cuyo uso se basa en la edad 
            y posición social del interlocutor.
        </p>
    </div>
    <br />
    <div style="text-align: right">
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HangulAlphabet"/>
    </div>
</asp:Content>
