<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="SolicitudSoporte.Tickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center my-3">Todos los tickets
    </h1>

    <div class="table-responsive">
        <table id="tablaTickets" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th style="width: 24px">Id</th>
                    <th style="width: 256px">Título</th>
                    <th class="modal-sm" style="width: 298px">Solicitado por</th>
                    <th class="modal-sm" style="width: 359px">Categoría</th>
                    <th style="width: 128px">Prioridad</th>
                    <th style="width: 72px">Estado</th>
                    <th style="width: 128px">Fecha creación</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Ayuda a actualizar mi windows</td>
                    <td>josue@gmail.com</td>
                    <td>Actualización de software</td>
                    <td>Alta</td>
                    <td style="width: 94px"><span class="badge">Nuevo</span></td>
                    <td>09/10/2026</td>
                </tr>
            </tbody>
        </table>
    </div>


</asp:Content>
