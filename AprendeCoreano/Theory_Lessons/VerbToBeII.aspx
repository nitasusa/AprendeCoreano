<%@ Page Title="Terminación verbal 'estar'/'haber'" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerbToBeII.aspx.cs" Inherits="AprendeCoreano.Theory_Lessons.VerbToBeII" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <div>
        <p>
            Igual que ocurre con la terminación verbal “ser”, la terminación verbal “estar” aunque se clasifica gramaticalmente 
            como una desinencia, su función se corresponde con la del verbo ESTAR o HABER español.
        </p>
        <br />
        <table style="text-align:center">
            <tr>
                <td style="background-color:lavenderblush; border:1px solid"><b>있다 : ESTAR</b></td>
                <td style="border:1px solid"><b>Afirmativa</b></td>
                <td style="border:1px solid"><b>Interrogativa</b></td>
                <td style="border:1px solid"><b>Negativa</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Muy formal</b></td>
                <td style="border:1px solid"><b>있습니다</b></td>
                <td style="border:1px solid"><b>있습니까?</b></td>
                <td style="border:1px solid"><b>없습니다</b></td>
            </tr>
            <tr>
                <td style="border:1px solid"><b>Formal</b></td>
                <td style="border:1px solid"><b>있어요</b></td>
                <td style="border:1px solid"><b>있어요?</b></td>
                <td style="border:1px solid"><b>없어요</b></td>
            </tr>
        </table>
        <br />
        <p><b style="text-decoration:underline; color:orange">SUFIJO LOCATIVO “에” : </b></p>
        <p>Para indicar localizaciones junto con la terminación “estar” se usa el sufijo locativo <b>“에”</b> 
           que equivale a la <b>preposición “en”</b> en español.</p>
        <br />
        <table>
            <tr>
                <td>Juan <b>está en</b> el banco.</td>
                <td style="min-width:50px;"></td>
                <td>후안은  은행<b>에있습니다</b>.</td>
            </tr>
            <tr>
                <td>El doctor <b>está en</b> el hospital.</td>
                <td style="min-width:50px;"></td>
                <td>의사는  병원<b>에있어요</b>.</td>
            </tr>
            <tr>
                <td>Yo <b>estoy en</b> el aula.</td>
                <td style="min-width:50px;"></td>
                <td>나는 교실<b>에있어요</b>.</td>
            </tr>
            <tr>
                <td>Maria <b>está en</b> la biblioteca.</td>
                <td style="min-width:50px;"></td>
                <td>마리아는 도서관<b>에있습니다</b>.</td>
            </tr>
            <tr>
                <td>Yo <b>no estoy en</b> el colegio.</td>
                <td style="min-width:50px;"></td>
                <td>나는  학교<b>에없습니다</b>.</td>
            </tr>
            <tr>
                <td>Él <b>no está en</b> casa.</td>
                <td style="min-width:50px;"></td>
                <td>그는  집<b>에없어요</b>.</td>
            </tr>
            <tr>
                <td>¿Qué <b>hay</b> ahí?</td>
                <td style="min-width:50px;"></td>
                <td>거기에 무엇이 <b>있습니까</b>?</td>
            </tr>
            <tr>
                <td><b>Hay</b> un árbol frente al colegio.</td>
                <td style="min-width:50px;"></td>
                <td>학교 앞에 나무가 <b>있어요</b>.</td>
            </tr>
        </table>
    </div>
    <br /><br />    
    <div style="text-align: right">       
        <asp:LinkButton runat="server" Text="Anterior lección" CssClass="btn btn-default" ID="btnAntLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/ConversationI"/>
        <asp:LinkButton runat="server" Text="Siguiente lección" CssClass="btn btn-default" ID="btnSigLeccion" style="margin: 10px"
                        PostBackUrl="~/Theory_Lessons/Locations"/>
    </div>
</asp:Content>
