package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchClass
 */
public class SearchClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  

		
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";
		PreparedStatement ps;
		ResultSet rs;
		
		String num;
		String FFF=(String)request.getSession().getAttribute("FFF");
		if (FFF!=null && FFF.equals("1"))
		{
			num=(String) request.getSession().getAttribute("g_num");
			request.getSession().removeAttribute("FFF");
		}
		else  
		{
			num=request.getParameter("num");
			request.getSession().setAttribute("g_num",num);
		}
		
		try 
		{
			Class.forName(driverName);
			Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
			
			ps=dbConn.prepareStatement("select * from class where g_num='"+num+"';");
			rs=ps.executeQuery();
			
			PreparedStatement PS=dbConn.prepareStatement("select * from teacher where tid=? ;");
			ResultSet RS;
			
			int i=0; 
			HttpSession session=request.getSession();
			while (rs.next())
			{
				i++;
				String c_num=rs.getString(5);
				int tid=rs.getInt(6);
				PS.setInt(1, tid);
				RS=PS.executeQuery();
				RS.next();
				String t_name=RS.getString(2);
				String c_name=rs.getString(2);
				
				session.setAttribute(String.valueOf(i), c_num);
				session.setAttribute("tn"+String.valueOf(i), t_name);
				session.setAttribute("cn"+String.valueOf(i) ,c_name);
			}
			response.sendRedirect("products.jsp");
			return ;
		
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
	}

}
