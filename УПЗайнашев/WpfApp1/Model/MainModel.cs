using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Model
{
    class MainModel
    {
        private static SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-QILM6OR\SQLEXPRESS;Initial Catalog=YPZainashev;Integrated Security=True");
        private static DataTable dataTable = null;
        private static SqlDataAdapter adapter = null;

        private static void Acccounts()
        {
            adapter = new SqlDataAdapter($"SELECT * FROM Accounts", connection);
            dataTable = new DataTable();
            adapter.Fill(dataTable);
        }

        public static bool SignIn(string login, string password)
        {
            Acccounts();
            foreach(DataRow row in dataTable.Rows)
            {
                if (row["login"].ToString() == login && row["password"].ToString() == password)
                {
                    Role.role = row["id_role"].ToString();
                    return true;
                }
            }
            return true;
        }
    }
}
