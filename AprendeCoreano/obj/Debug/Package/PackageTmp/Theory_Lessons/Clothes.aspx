<%@ Page Title="Prendas de vestir" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clothes.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Clothes" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div style="width: 75%; margin: 0 auto; top: 0px; text-align:center">
        <img src="Images/Clothes.png" style="max-width: 400px"/>
    </div>
    <br /><br />
    <div>
        <table style="margin:0 auto">
            <tr>
                <td>¿De qué color es esta <b>falda</b>?</td>
                <td style="min-width:50px;"></td>
                <td>이 <b>치마는</b> 무슨 색이에요?</td>
            </tr>
            <tr>
                <td>Esa <b>falda</b> es verde.</td>
                <td style="min-width:50px;"></td>
                <td>그 <b>치마는</b> 초록색이에요.</td>
            </tr>
            <tr>
                <td>¿Es roja esa <b>blusa</b>?</td>
                <td style="min-width:50px;"></td>
                <td>그 <b>블라우스는</b> 빨강색입니까?</td>
            </tr>
            <tr>
                <td>Esos <b>pantalones</b> son azules.</td>
                <td style="min-width:50px;"></td>
                <td>이 <b>바지는</b> 파랑색입니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Colors"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Numbers"/>
    </div>
</asp:Content>
