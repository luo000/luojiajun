package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {

        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = null;
            PreparedStatement preparedStatement = null;

            String sql = "insert into t_user (user_name,password,gender,age) values (?,?,?,?)";

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tree?serverTimezone=GMT%2B8","root","sctu123456");

            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1,req.getParameter("username"));
            preparedStatement.setString(2,req.getParameter("password"));
            preparedStatement.setString(3,req.getParameter("gender"));
            preparedStatement.setString(4,req.getParameter("age"));

            int row = preparedStatement.executeUpdate();

            if (row > 0){
                System.out.println("注册成功！");
                resp.sendRedirect("/login.jsp");
                return;
            }else{
                System.out.println("注册失败！");
                resp.sendRedirect("/register_faile.jsp");
                return;
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
