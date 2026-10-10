using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SolicitudSoporte.models
{
    public class Ticket
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Email { get; set; }
        public string Category { get; set; }
        public string Priority { get; set; }
        public string Description { get; set; }
        public string State { get; set; }
        public DateTime CreatedIn { get; set; }
    }
}