package servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.text.SimpleDateFormat;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {

        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            String sql = "select * from t_user where user_name =" +"'"+username+"'";

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tree?serverTimezone=GMT%2B8","root","sctu123456");

            statement = connection.createStatement();

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                if (!resultSet.getString(3).equals(password)){
                    System.out.println("用户名或密码不正确1");
                    session.setAttribute("isLogin",false);
                    resp.sendRedirect("/error.jsp");
                    return;
                }else {
                    System.out.println("登录成功");

                    //获取访问时间和用户名
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                    System.out.println("访问时间："+df.format(System.currentTimeMillis()));

                    System.out.println("访问姓名："+username);

                    session.setAttribute("isLogin",true);
                    resp.sendRedirect("/love.html");
                    return;
                }
            }

            if (!resultSet.previous()){
                System.out.println("用户名或密码不正确");
                session.setAttribute("isLogin",false);
                resp.sendRedirect("/error.jsp");
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
