<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="SolicitudSoporte.CreateTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center my-3">Crear un nuevo ticket
    </h1>

    <div id="formTicket">
        <div>
            <input id="id" type="hidden" />
        </div>
        <div class="input-group">
            <asp:Label ID="lb_title" runat="server" Text="Label" class="form-label">Titulo <b class="text-danger">*</b></asp:Label>
            <input id="title" type="text" placeholder="Agrega un título de su ticket aquí" class="form-control" />
        </div>
        <br />
        <div class="input-group">
            <asp:Label ID="lb_email" runat="server" Text="Label" class="form-label">Correo electrónico <b class="text-danger">*</b></asp:Label>
            <input id="email" type="text" class="form-control" placeholder="ejemplo@ejemplo.com" />
        </div>
        <br />
        <div class="input-group">
            <asp:Label ID="lb_categoty" runat="server" Text="Label" class="form-label">Categoria</asp:Label>
            <select id="categoty" class="form-control"> 
                <option value="1" selected>Mantenimiento de sistema</option>
                <option value="2">Actualización de software</option>
                <option value="3">Otro</option>
            </select>
        </div>
        <br />
        <div class="input-group">
            <asp:Label ID="lb_priority" runat="server" Text="Label" class="form-label">Prioridad</asp:Label>
            <select id="priority" class="form-control">
                <option value="1">Crítica</option>
                <option value="2">Alta</option>
                <option value="3" selected>Media</option>
                <option value="4">Baja</option>
            </select>
        </div>
        <br />
        <div class="input-group">
            <asp:Label ID="lb_description" runat="server" Text="Label" class="form-label" >Descripción <b class="text-danger">*</b></asp:Label>
            <textarea id="TextArea1" cols="20" rows="5" class="form-control"></textarea>
        </div>
        <br />
        <div>
            <input id="Submit" type="submit" value="Enviar" class="btn btn-primary" />
        </div>
    </div>

    </asp:Content>
