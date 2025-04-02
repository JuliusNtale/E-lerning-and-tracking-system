import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Fname = request.getParameter("First name");
        String Sname = request.getParameter("Sir name");
        String Organisation = request.getParameter("Organisation");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO users (Fname, Sname, Organisation, email, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, Fname);
            stmt.setString(2, Sname);
            stmt.setString(3, Organisation);
            stmt.setString(4, email);
            stmt.setString(5, password);
            stmt.executeUpdate();

            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
