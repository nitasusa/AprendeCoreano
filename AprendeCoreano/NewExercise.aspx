<%@ Page Title="Nuevo ejercicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewExercise.aspx.cs" Inherits="AprendeCoreano.NewExercise" ClientIDMode="Static" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#chkOpciones").click(function (evento) {
                if ($("#chkOpciones").prop("checked")) {
                    $("#divOpciones").css("display", "block");
                } else {
                    $("#divOpciones").css("display", "none");
                }
            });
        });
    </script>
    <h2><%: Title %>.</h2>  
    <div class="form-horizontal">
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cboColecciones" CssClass="col-md-2 control-label">Colección:</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="cboColecciones" CssClass="form-control" Width="500" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cboColecciones" ValidationGroup="validar" InitialValue="0"
                    CssClass="text-danger" ErrorMessage="Selecciona una colección a la que añadir el ejercicio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cboConceptos" CssClass="col-md-2 control-label">Concepto asociado:</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="cboConceptos" CssClass="form-control" Width="500"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cboConceptos" ValidationGroup="validar" InitialValue="0"
                    CssClass="text-danger" ErrorMessage="Selecciona el concepto teórico asociado del ejercicio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEnunciado" CssClass="col-md-2 control-label">Enunciado:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtEnunciado" TextMode="Multiline" CssClass="form-control" style="resize:none" Width="500" Height="80px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEnunciado" ValidationGroup="validar"
                    CssClass="text-danger" ErrorMessage="Escribe el enunciado del ejercicio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="chkOpciones" CssClass="col-md-2 control-label">Opciones:</asp:Label>
            <div class="col-md-10">
                <asp:CheckBox ID="chkOpciones" runat="server" />
            </div>
        </div>
        <div ID="divOpciones" style="display:none">
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtOpcion1" CssClass="col-md-2 control-label">Opción 1:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtOpcion1" CssClass="form-control" Width="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOpcion1" ValidationGroup="validarOpciones"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtOpcion2" CssClass="col-md-2 control-label">Opción 2:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtOpcion2" CssClass="form-control" Width="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOpcion2" ValidationGroup="validarOpciones"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtOpcion3" CssClass="col-md-2 control-label">Opción 3:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtOpcion3" CssClass="form-control" Width="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOpcion3" ValidationGroup="validarOpciones"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRespuesta" CssClass="col-md-2 control-label">Respuesta correcta:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRespuesta" CssClass="form-control" Width="500" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRespuesta" ValidationGroup="validar"
                    CssClass="text-danger" ErrorMessage="Escribe la respuesta correcta del ejercicio." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="btnCrearEjercicio" runat="server" Text="Añadir ejercicio" CssClass="btn btn-default" Width="150px" ValidationGroup="validar" OnClick="btnCrearEjercicio_Click" />
                <asp:LinkButton ID="btnVolver" runat="server" Text="Volver" Width="150px" CssClass="btn btn-default" PostBackUrl="~/Exercises" CausesValidation="False" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <a href="https://www.branah.com/korean" target="_blank">Teclado virtual Hangul</a>
            </div>
        </div>
    </div>
</asp:Content>
