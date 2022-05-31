using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Npgsql;

namespace TennisklubbenRyvang.Database
{
    public class Connection
    {
        private static string connectionString = "Host=localhost;Username=postgres;Password=s$cret;Database=testdb";
   

        private void DeveloperCtrlC()
        {
            using (NpgsqlConnection con = new NpgsqlConnection(connectionString)) 
            {
                con.Open();
                var sql = "SELECT version()";
                using (NpgsqlCommand cmd = new NpgsqlCommand(sql, con))
                {
                    var version = cmd.ExecuteScalar().ToString();
                    Console.WriteLine($"PostgreSQL version: {version}");
                }

                
            }

                

            
        }
    }
}