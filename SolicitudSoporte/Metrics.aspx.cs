using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SolicitudSoporte
{
    public partial class Metrics : System.Web.UI.Page
    {
        private int allTicket;
        private int criticalTickts;
        private int highTickts;
        private int mediumTickts;
        private int lowTickts;
        private double criticalPercentage;
        private double highPercentage;
        private double mediumPercentage;
        private double lowPercentage;

        protected void Page_Load(object sender, EventArgs e)
        {
            updateData(); 

            if (!IsPostBack && !IsCallback)
            {
                loadInfo();
            }
        }

        protected void updateData(object sender, EventArgs e)
        {
            updateData();
            loadInfo();
        }

        private void loadInfo()
        {
            lb_critics.Text = criticalTickts + " tickets";
            lb_critics_percentage.Text = criticalPercentage + "%";
            lb_high.Text = highTickts + " tickets";
            lb_high_percentage.Text = highPercentage + "%";
            lb_medium.Text = mediumTickts + " tickets";
            lb_medium_percentage.Text = mediumPercentage + "%";
            lb_low.Text = lowTickts + " tickets";
            lb_low_percentage.Text = lowPercentage + "%";
        }


        private void updateData()
        {
            //Get total item
            allTicket = Tickets.list.Count;

            //Get all tickets by type
            criticalTickts = Tickets.list.Count(t => t.Priority == "Crítica");
            highTickts = Tickets.list.Count(t => t.Priority == "Alta");
            mediumTickts = Tickets.list.Count(t => t.Priority == "Media");
            lowTickts = Tickets.list.Count(t => t.Priority == "Baja");

            //Get percentage
            criticalPercentage = allTicket == 0 ? 0 : (double)criticalTickts / allTicket * 100;
            highPercentage = allTicket == 0 ? 0 : (double)highTickts / allTicket * 100;
            mediumPercentage = allTicket == 0 ? 0 : (double)mediumTickts / allTicket * 100;
            lowPercentage = allTicket == 0 ? 0 : (double)lowTickts / allTicket * 100;

            //Update progress bar
            barCritical.Style["width"] = criticalPercentage.ToString(CultureInfo.InvariantCulture) + "%";
            barHigh.Style["width"] = highPercentage.ToString(CultureInfo.InvariantCulture) + "%";
            barMedium.Style["width"] = mediumPercentage.ToString(CultureInfo.InvariantCulture) + "%";
            barLow.Style["width"] = lowPercentage.ToString(CultureInfo.InvariantCulture) + "%";



            criticalPercentage = Math.Round(criticalPercentage);
            highPercentage = Math.Round(highPercentage);
            mediumPercentage = Math.Round(mediumPercentage);
            lowPercentage = Math.Round(lowPercentage);
        }
    }
}