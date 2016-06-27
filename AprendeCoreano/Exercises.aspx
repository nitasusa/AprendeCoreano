<%@ Page Title="Ejercicios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercises.aspx.cs" Inherits="AprendeCoreano.Exercises" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js" type="text/javascript"></script>
    <asp:MultiView ID="EsLogado" runat="server">
        <asp:View ID="Anonymous" runat="server">
            <h3>
                Necesitas iniciar sesión para acceder a los ejercicios.
            </h3>
            <br /><br />
            <p><a href="Account/Login" class="btn btn-primary btn-lg">Iniciar sesión</a></p>
        </asp:View>
        <asp:View ID="Logado" runat="server">
            <p>Colecciones disponibles de ejercicios:</p>
            <asp:DropDownList ID="cboColecciones" width="240px" runat="server" OnSelectedIndexChanged="cboColecciones_SelectedIndexChanged"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvColecciones" runat="server" ControlToValidate="cboColecciones" ValidationGroup="Validator"
                                        InitialValue="0" ErrorMessage="Seleccione primero una colección." style="color:red; padding-left:10px"/>
            <br /><br />
            <asp:Button ID="btnEjercicios" runat="server" Text="Hacer ejercicios" Width="240px" CssClass="btn btn-default"
                        CausesValidation="true" ValidationGroup="Validator" OnClick="btnEjercicios_Click" />
            <asp:Label ID="lblNuevaColeccion" runat="server" Font-Bold="true" style="color:green; padding-left:10px"></asp:Label>
            <br />
            <h3>
                ¿Quieres crear un ejercicio y añadirlo a una colección?
            </h3>
            <br />
            <asp:LinkButton ID="btnCrearEjercicio" runat="server" Text="Crear ejercicio" Width="240px" CssClass="btn btn-default" PostBackUrl="~/NewExercise" />
            <br /><br />
            <p>Para hacer los ejercicios deberás escribir caracteres Hangul. Si no tienes tu teclado configurado puedes usar esta página para escribir coreano:</p>
            <a href="https://www.branah.com/korean" target="_blank">Teclado virtual Hangul</a>
            <script type="text/javascript">
                $(document).ready(function () {
                    if ($("#lblNuevaColeccion").text() != "" && $("#lblNuevaColeccion").text() != undefined) {
                        alert($("#lblNuevaColeccion").val())
                    }
                });
            </script>
        </asp:View>
        <asp:View ID="Ejercicios" runat="server">
            <h3 style="color:orange; text-align:center"><b><%: cboColecciones.SelectedItem.Text.ToUpper() %></b></h3>
            <div>
                <table style="margin:0 auto">
                    <tr>
                        <td><b>Enunciado:  </b></td>
                        <td colspan="3">
                            <asp:TextBox ID="txtEnunciado" runat="server" style="resize:none" Width="600px" Font-Size="18px" Height="100px"
                                         TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Opciones:  </b></td>
                        <td style="background-color:lightyellow; text-align:center; border:1px solid">
                            <asp:Label ID="lblOpcion1" runat="server" Font-Size="18px" Height="30px"></asp:Label>
                        </td>
                        <td style="background-color:lightyellow; text-align:center; border:1px solid">
                            <asp:Label ID="lblOpcion2" runat="server" Font-Size="18px" Height="30px"></asp:Label>
                        </td>
                        <td style="background-color:lightyellow; text-align:center; border:1px solid">
                            <asp:Label ID="lblOpcion3" runat="server" Font-Size="18px" Height="30px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Escribir:  </b></td>
                        <td colspan="3">
                            <asp:TextBox ID="txtEscribir" runat="server" Width="600px" style="width:600px; min-width:600px" Font-Size="18px" Height="40px"
                                         CausesValidation="true" ValidationGroup="Validar">
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Acciones:  </b></td>
                        <td><asp:Button ID="btnValidar" runat="server" Text="Validar respuesta" CssClass="btn btn-default" Width="200px" Height="50px" OnClick="btnValidar_Click" ValidationGroup="Validar" /></td>
                        <td><asp:Button ID="btnSigEjercicio" runat="server" Text="Siguiente ejercicio" CssClass="btn btn-default" Width="200px" Height="50px" OnClick="btnSigEjercicio_Click" /></td>
                        <td><asp:Button ID="btnSalir" runat="server" Text="Salir" CssClass="btn btn-default" Width="200px" Height="50px" OnClick="btnSalir_Click" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3">
                            <asp:RequiredFieldValidator ID="rfvEscribir" runat="server" ControlToValidate="txtEscribir" ValidationGroup="Validar"
                                        ErrorMessage="Escriba primero su respuesta." style="color:red; padding-left:10px; padding-top:10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="txtiEjercicio" runat="server" Width="30px" Text="0" Visible="false"></asp:TextBox></td>
                        <td>
                            <asp:Label ID="lblValidacion" runat="server" Font-Bold="true" ForeColor="Green" style="padding-left:10px"></asp:Label>
                        </td>
                        <td style="text-align:center">
                            <a href="https://www.branah.com/korean" target="_blank">Teclado virtual Hangul</a>
                        </td>
                    </tr>
                </table>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
