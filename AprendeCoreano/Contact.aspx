<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AprendeCoreano.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        Si tienes alguna sugerencia para mejorar la web no dudes en hacérmelo saber.
    </h3>
    <br />
    <asp:Table runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Email:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <a href="mailto:sucaslo@hotmail.com">sucaslo@hotmail.com</a>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <h4>¡Deja aquí tu sugerencia!</h4>
    <br />
    <div >
        <asp:Label ID="lblSugerencia" runat="server" Text="Sugerencia:" control-for="txtSugerencia" style="padding-right:20px"></asp:Label>
        <asp:TextBox ID="txtSugerencia" runat="server" TextMode="MultiLine" Width="400px" Height="180px"></asp:TextBox>
    </div>    
    <div style="padding-left:100px; padding-top:15px">
        <asp:Button runat="server" OnClick="EnviarSugerencia_Click" Text="Enviar" CssClass="btn btn-default" ID="btnEnviar" />
        <asp:Label ID="lblSugerenciaEnviada" runat="server" Text="¡Sugerencia enviada!" style="font-size:12px; padding-left:20px" Visible="false"></asp:Label>
    </div>
</asp:Content>
