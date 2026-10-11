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

            ticket.Id = Tickets.list.Count + 1;
            ticket.Title = title.Value;
            ticket.Email = email.Value;
            ticket.Category = categoty.Value;
            ticket.Priority = priority.Value;
            ticket.Description = description.Value;
            ticket.State = "Nuevo";
            ticket.CreatedIn = DateTime.Now;

            Tickets.list.Add(ticket);

            cleanField();
        }

        private void cleanField()
        {
            title.Value = "";
            email.Value = "";
            categoty.Value = "Mantenimiento de sistema";
            priority.Value = "Media";
            description.Value = "";
        }
    }
}