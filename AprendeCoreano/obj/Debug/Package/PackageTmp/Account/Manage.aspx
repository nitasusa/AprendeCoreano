<%@ Page Title="Administrar cuenta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="AprendeCoreano.Account.Manage" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Cambiar la configuración de la cuenta</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Contraseña:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="~/Account/ManagePassword" Text="[Cambiar]" Visible="false" ID="ChangePassword" runat="server" />
                    </dd>                 
                </dl>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Estadísticas</h4>
                <hr />
                <p>Tus puntos fuertes:</p>
                <asp:GridView ID="gvMejoresPuntuaciones" runat="server" AutoGenerateColumns="False" AlternatingRowStyle-BackColor="#006600"
                    AlternatingRowStyle-BorderColor="White" AlternatingRowStyle-ForeColor="White" BackColor="#006600" BorderColor="White"
                    Font-Bold="True" ForeColor="White" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#66FF33">
                    <AlternatingRowStyle BackColor="#009933" BorderColor="White" ForeColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Top" HeaderText="Top"/>
                        <asp:BoundField DataField="Concepto" HeaderText="Concepto" ItemStyle-Width="240px">
<ItemStyle Width="240px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Aciertos/Total" HeaderText="Aciertos/Total"/>
                        <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje"/>
                    </Columns>
                    <HeaderStyle BackColor="#666666" BorderColor="White" ForeColor="White" BorderWidth="3px"></HeaderStyle>
                </asp:GridView>
                <br />
                <p>Tus puntos débiles:</p>
                <asp:GridView ID="gvPeoresPuntuaciones" runat="server" AutoGenerateColumns="False" AlternatingRowStyle-BackColor="#FF3300"
                    AlternatingRowStyle-BorderColor="White" AlternatingRowStyle-ForeColor="White" BackColor="Maroon" BorderColor="White"
                    Font-Bold="True" ForeColor="White" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#66FF33">
                    <AlternatingRowStyle BackColor="#FF3300" BorderColor="White" ForeColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Top" HeaderText="Top"/>
                        <asp:BoundField DataField="Concepto" HeaderText="Concepto" ItemStyle-Width="240px"/>
                        <asp:BoundField DataField="Aciertos/Total" HeaderText="Aciertos/Total"/>
                        <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje"/>
                    </Columns>
                    <HeaderStyle BackColor="#666666" BorderColor="White" ForeColor="White" BorderWidth="3px"></HeaderStyle>
                </asp:GridView>
                <br /><br />
                <table>
                    <tr>
                        <td>Número de ejercicios realizados:</td>
                        <td style="min-width:10px"></td>
                        <td><%: NumEjerciciosRealizados %></td>
                    </tr>
                    <tr>
                        <td>Número de ejercicios creados:</td>
                        <td style="min-width:10px"></td>
                        <td><%: NumEjerciciosCreados %></td>
                    </tr>
                </table>                
            </div>
        </div>
    </div>
</asp:Content>
