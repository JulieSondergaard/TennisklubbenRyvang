using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TennisklubbenRyvang
{
    public partial class CreateNewUser : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection())
            {
                string username = UserName.Text;
                Debug.WriteLine(username);
                string password = Password.Text;
                string firstName = FirstName.Text;
                string surName = SurName.Text;
                string address = Address.Text;
                string zip = ZipCode.Text;
                string city = City.Text;
                DateTime birthday = Birthday.SelectedDate;
                string birthdayFormated = birthday.ToString("yyyy-MM-dd");
                string telephone = TelephoneNumber.Text;
                string email = Email.Text;
                string creditCard = CreditCard.Text;

                con.ConnectionString = ConfigurationManager.ConnectionStrings["member"].ConnectionString;
              
                using (SqlCommand cmd = new SqlCommand("insert_member", con))
                {
                    con.Open();

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userName", SqlDbType.VarChar).Value = username;
                    Debug.WriteLine(username);
                    cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password;
                    cmd.Parameters.AddWithValue("@firstName", SqlDbType.VarChar).Value = firstName;
                    cmd.Parameters.AddWithValue("@surName", SqlDbType.VarChar).Value = surName;
                    cmd.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address;
                    cmd.Parameters.AddWithValue("@zipCode", SqlDbType.VarChar).Value = zip;
                    cmd.Parameters.AddWithValue("@city", SqlDbType.VarChar).Value = city;
                    cmd.Parameters.AddWithValue("@birthday", SqlDbType.Date).Value = birthdayFormated;
                    cmd.Parameters.AddWithValue("@telephoneNumber", SqlDbType.VarChar).Value = telephone;
                    cmd.Parameters.AddWithValue("@eMailAddress", SqlDbType.VarChar).Value = email;
                    cmd.Parameters.AddWithValue("@creditCardNumber", SqlDbType.VarChar).Value = creditCard;
                                                              
                    cmd.ExecuteNonQuery();

                    con.Close();
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Brugeren blev oprettet!')</script>");
            } 

           
        }


        }
    }
