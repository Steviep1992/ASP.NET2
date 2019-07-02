using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;

namespace FreeLanceWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write(txtName.Text + "</br>");

            Response.Write(ListName.SelectedItem.Text + "</br>");

            lblName.Visible = false;
            txtName.Visible = false;
            ListName.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            rdFemale.Visible = false;
            btnSubmit.Visible = false;
        }

        protected void btnSession_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            Response.Write(Session["Name"]);
            lblName.Visible = false;
            txtName.Visible = false;
            ListName.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            rdFemale.Visible = false;
            btnSubmit.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                string mycon = "datasource=localhost;username=root;password=***********";
                //Display query  
                string Query = "select * from cis407b.tblDemo;";
                MySqlConnection con = new MySqlConnection(mycon);
                MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = Query;
            cmd.Connection = con; 
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
            MyAdapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            MyAdapter.Fill(ds);
                dataGridView1.DataSource = ds;
            dataGridView1.DataBind();
            con.Close();

           
        }

        
    }
}