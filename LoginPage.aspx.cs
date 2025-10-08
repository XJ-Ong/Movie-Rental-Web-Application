using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Step 1
// using System.data
// using System.data.sqlclient
using System.Configuration;
using System.Data.SqlClient;

namespace WAPP2502
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Step 2: Create a connection
            string connStr = ConfigurationManager.ConnectionStrings["wappConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                // Step 3: Open connection
                conn.Open();

                // Admin login check (with role)
                string adminQuery = "SELECT * FROM tblAdmin WHERE username = @username AND password = @password";
                SqlCommand adminComm = new SqlCommand(adminQuery, conn);
                adminComm.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                adminComm.Parameters.AddWithValue("@password", txtPass.Text);

                SqlDataReader adminReader = adminComm.ExecuteReader();
                if (adminReader.Read())
                {
                    if (adminReader["role"].ToString().ToLower() == "admin")
                    {
                        // Create Session Variables for Admin
                        Session["AID"] = adminReader["AID"].ToString();
                        Session["username"] = adminReader["username"].ToString();

                        adminReader.Close(); // close before redirect
                        Response.Redirect("admin.aspx");
                        return;
                    }
                }
                adminReader.Close();

                // Step 4: Create sql command - select, insert, update, delete
                string query = "SELECT * FROM tblCustomers WHERE email = @email AND password = @password";
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                comm.Parameters.AddWithValue("@password", txtPass.Text);

                // Step 5: Manipulate data - read and execute
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.Read())
                {
                    lblMsg.Text = "Login successful";

                    // Create Session Variables
                    Session["CID"] = reader["cid"].ToString();
                    Session["email"] = reader["email"].ToString();
                    Session["firstname"] = reader["firstname"].ToString();
                    Session["lastname"] = reader["lastname"].ToString();
                    Session["age"] = reader["age"].ToString();
                    Session["gender"] = reader["gender"].ToString();
                    Session["country"] = reader["country"].ToString();
                    Session["fullname"] = reader["firstname"].ToString() + " " + reader["lastname"].ToString();

                    // Debug purpose only
                    Response.Write(Session["CID"].ToString());
                    Response.Write(Session["email"].ToString());
                    Response.Write(Session["fullname"].ToString());

                    reader.Close(); // close before redirect
                    Response.Redirect("Default.aspx");
                    // Response.AppendHeader("Refresh", "3;url=default.aspx");
                    return;
                }
                else
                {
                    reader.Close();
                    lblMsg.Text = "Invalid credentials, please try again";
                    Response.Redirect("LoginPage.aspx");
                }
            }
            finally
            {
                // Step 6: Close connection
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
    }
}
