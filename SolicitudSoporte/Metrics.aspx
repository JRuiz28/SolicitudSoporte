<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Metrics.aspx.cs" Inherits="SolicitudSoporte.Metrics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1 class="text-center my-5">Métricas de tickets</h1>

    <br />

    <div class="container">
        
        <h1 class="my-5">Porcentaje según la prioridad</h1>
        
        <br />

        <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="updateData" class="btn btn-primary" />
        
        <br />
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />

                <div class="row">
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger" runat="server" id="barCritical">
                            <span class="sr-only">Crítica</span>
                        </div>
                        <div class="progress-bar progress-bar-warning progress-bar-striped" runat="server" id="barHigh">
                            <span class="sr-only">Alta</span>
                        </div>
                        <div class="progress-bar progress-bar-success" runat="server" id="barMedium">
                            <span class="sr-only">Media</span>
                        </div>
                        <div class="progress-bar progress-bar-info" runat="server" id="barLow">
                            <span class="sr-only">Baja</span>
                        </div>
                    </div>
                </div>

                <br />

                <div class="row">
                    <div class="col-md-6">
                        <div class="thumbnail alert-danger" style="height: 174px">
                            <div class="caption text-center">
                                <h3><b>Crítica</b> <asp:Label ID="lb_critics" runat="server"></asp:Label></h3>
                        
                                <p style="font-size: 40px; font-weight: bold; margin-bottom: 10px;">
                                    <asp:Label ID="lb_critics_percentage" runat="server"></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
            
                    <div class="col-md-6">
                        <div class="thumbnail alert-warning" style="height: 174px">
                            <div class="caption text-center">
                                <h3><b>Alto</b> <asp:Label ID="lb_high" runat="server"></asp:Label></h3>
                        
                                <p style="font-size: 40px; font-weight: bold; margin-bottom: 10px;">
                                    <asp:Label ID="lb_high_percentage" runat="server"></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
            
                    <div class="col-md-6">
                        <div class="thumbnail alert-success" style="height: 174px">
                            <div class="caption text-center">
                                <h3><b>Medio</b> <asp:Label ID="lb_medium" runat="server"></asp:Label></h3>
                        
                                <p style="font-size: 40px; font-weight: bold; margin-bottom: 10px;">
                                    <asp:Label ID="lb_medium_percentage" runat="server"></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
            
                    <div class="col-md-6">
                        <div class="thumbnail alert-info" style="height: 174px">
                            <div class="caption text-center">
                                <h3><b>Bajo</b> <asp:Label ID="lb_low" runat="server"></asp:Label></h3>
                        
                                <p style="font-size: 40px; font-weight: bold; margin-bottom: 10px;">
                                    <asp:Label ID="lb_low_percentage" runat="server"></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
            
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
