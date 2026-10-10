using SolicitudSoporte.models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SolicitudSoporte
{
    public partial class Tickets : System.Web.UI.Page
    {
        public static List<Ticket> list = new List<Ticket>();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                loadTable();
            }
        }

        protected void updateData(object sender, EventArgs e)
        {
            loadTable();
        }

        private void loadTable()
        {
            Repeater1.DataSource = list;
            Repeater1.DataBind();
        }
    }
}