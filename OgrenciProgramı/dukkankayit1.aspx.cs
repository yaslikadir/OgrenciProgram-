using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProgramı
{
    public partial class dukkankayit1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OkulDbEntities baglan = new OkulDbEntities();


        private void doldur()
        {  
            var veri = baglan.dukkan.ToList();
            GridView1.DataSource= veri;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            dukkan tablo=new dukkan();
            tablo.dukkanadi = TextBox1.Text;
            tablo.dukkanAdres = TextBox2.Text;
            tablo.webSayfa = TextBox3.Text;
            tablo.telefon = TextBox4.Text;
            baglan.dukkan.Add(tablo);
            baglan.SaveChanges();
           doldur();
            Response.Write("kayıt Başarılı");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

