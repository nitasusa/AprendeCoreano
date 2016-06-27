<%@ Page Title="Colores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Colors.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.Colors" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br /><br />
    <div>
        <table style="text-align:center; margin:0 auto">
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px"><b>Color</b></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:grey"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>회색</b></td>
            </tr>
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:blue"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>파랑색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:white"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>흰색</b></td>
            </tr>
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:red"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>빨강색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:black"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>검정색</b></td>
            </tr>
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:orange"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>주황색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:lightpink"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>분홍</b></td>
            </tr>
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:yellow"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>노랑색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:saddlebrown"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>밤색</b></td>
            </tr>
            <tr>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:green"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>초록색</b></td>
                <td style="border:1px solid; min-width:100px; height:80px; background-color:purple"></td>
                <td style="border:1px solid; min-width:100px; height:80px"><b>보라색</b></td>
            </tr>
        </table>
        <br /><br />
        <table style="margin:0 auto">
            <tr>
                <td>¿De qué <b>color</b> es?</td>
                <td style="min-width:50px;"></td>
                <td>무슨 <b>색</b>입니까? /무슨 <b>색</b>이에요?</td>
            </tr>
            <tr>
                <td>Es <b>rosa</b>.</td>
                <td style="min-width:50px;"></td>
                <td><b>분홍</b>입니다.</td>
            </tr>
            <tr>
                <td>¿Es <b>azul</b> esa camisa?</td>
                <td style="min-width:50px;"></td>
                <td>그 셔츠는 <b>파랑색</b>입니까?</td>
            </tr>
            <tr>
                <td>No, es <b>blanca</b>.</td>
                <td style="min-width:50px;"></td>
                <td>아니오, <b>흰색</b>입니다.</td>
            </tr>
        </table>
    </div>
    <br /><br />
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Locations"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Clothes"/>
    </div>
</asp:Content>
