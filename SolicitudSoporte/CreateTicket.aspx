<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="SolicitudSoporte.CreateTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center my-5">Crear un nuevo ticket</h1>

    <div id="formTicket">

        <div>
            <input id="id" type="hidden" />
        </div>

        <div class="input-group">
            <asp:Label ID="lb_title" runat="server" Text="Label" class="form-label">Titulo <b class="text-danger">*</b></asp:Label>
            <input id="title" runat="server" type="text" placeholder="Agrega un título de su ticket aquí" class="form-control" />
        </div>

        <br />
        <div class="input-group">
            <asp:Label ID="lb_email" runat="server" Text="Label" class="form-label">Correo electrónico <b class="text-danger">*</b></asp:Label>
            <input id="email" runat="server" type="text" class="form-control" placeholder="ejemplo@ejemplo.com" />
        </div>

        <br />
        <div class="input-group">
            <asp:Label ID="lb_categoty" runat="server" Text="Label" class="form-label">Categoria</asp:Label>
            <select id="categoty" runat="server" class="form-control"> 
                <option value="Mantenimiento de sistema" selected>Mantenimiento de sistema</option>
                <option value="Actualización de software">Actualización de software</option>
                <option value="Otro">Otro</option>
            </select>
        </div>

        <br />
        <div class="input-group">
            <asp:Label ID="lb_priority" runat="server" Text="Label" class="form-label">Prioridad</asp:Label>
            <select id="priority" runat="server" class="form-control">
                <option value="Crítica">Crítica</option>
                <option value="Alta">Alta</option>
                <option value="Media" selected>Media</option>
                <option value="Baja">Baja</option>
            </select>
        </div>

        <br />
        <div class="input-group">
            <asp:Label ID="lb_description" runat="server" Text="Label" class="form-label" >Descripción <b class="text-danger">*</b></asp:Label>
            <textarea id="description" runat="server" cols="20" rows="5" class="form-control"></textarea>
        </div>

        <br />
        <div>
            <asp:Button ID="Save" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="Save_Click" />
        </div>
    </div>
</asp:Content>
