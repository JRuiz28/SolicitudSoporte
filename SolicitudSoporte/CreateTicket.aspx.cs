using SolicitudSoporte.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SolicitudSoporte
{
    public partial class CreateTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Ticket ticket = new Ticket();

            ticket.Id = 1;
            ticket.Title = "Ayuda";
            ticket.Email = "a@a.com";
            ticket.Category = "HS";
            ticket.Priority = "Alta";
            ticket.Description = "aaaa";
            ticket.State = "Nuevo";
            //ticket.CreatedIn = 1;

            Tickets.list.Add(ticket);
            Console.WriteLine("aaaa");
            ClientScript.RegisterStartupScript(this.GetType(), "alerta",
    "alert('Ticket guardado correctamente');", true);

        }
    }
}