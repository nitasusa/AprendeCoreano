<%@ Page Title="Alfabeto Hangul" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HangulAlphabet.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.HangulAlphabet" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px;">
            <img src="Images/Alfabeto_Hangul.png"/>
        </div>
    <br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Lesson0"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/HangulWriting"/>
    </div>
</asp:Content>
