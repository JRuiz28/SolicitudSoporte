<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="SolicitudSoporte.Tickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center my-3">Todos los tickets
    </h1>


 
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#: Eval("Id") %></td>
                                    <td><%#: Eval("Title") %></td>
                                    <td><%#: Eval("Email") %></td>
                                    <td><%#: Eval("Category") %></td>
                                    <td><%#: Eval("Priority") %></td>
                                    <td><span class="badge"><%#: Eval("State") %></span></td>
                                    <td><%#: Eval("CreatedIn", "{0:dd/MM/yyyy}") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
                        
    <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="updateData" />

</asp:Content>
