package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.Student;
import member.Teacher;

/**
 * Servlet implementation class DealLogin
 */
public class DealLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DealLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("resource")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  

		
		String flag=request.getParameter("optionsRadios");
		String username=request.getParameter("username");
		String pwd=request.getParameter("password");
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";

		PreparedStatement ps;
		
		String head="select * from ";
		ResultSet rs;
		try
		  {
			  Class.forName(driverName);
			  Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
			  
			  if (flag.equals("Manager")) 
			  {
				  ps= dbConn.prepareStatement(head+"manager where r_handler='"+username+"' and r_password='"+pwd+"';");
				  rs=ps.executeQuery();
			  }
			  else if (flag.equals("Teacher"))
			  {
				  ps= dbConn.prepareStatement(head+"teacher where t_handle='"+username+"' and t_password='"+pwd+"';");
				  rs=ps.executeQuery();				  
			  }
			  else if (flag.equals("Student"))
			  {
				  ps= dbConn.prepareStatement(head+"student where s_handle='"+username+"' and s_password='"+pwd+"';");
				  rs=ps.executeQuery();
			  }
			  else rs=null;
			  boolean FLAG=rs.next();
			  if (FLAG) 
			  {
				  HttpSession session=request.getSession();
				  session.setAttribute("handle", username);
				  session.setAttribute("pwd", pwd);
				  if (flag.equals("Student"))
				  {
					  ps=dbConn.prepareStatement("select * from student where s_handle='"+username+"';");
					  rs=ps.executeQuery();
					  rs.next();
					  Student stu=new Student(rs);
					  session.setAttribute("name",stu.name);
					  session.setAttribute("sex", stu.sex);
					  session.setAttribute("birth", stu.birth);
					  session.setAttribute("Id", stu.Id);
					  
				  }
				  else if (flag.equals("Teacher"))
				  {
					  ps=dbConn.prepareStatement("select * from teacher where t_handle='"+username+"';");
					  rs=ps.executeQuery();
					  rs.next();
					  Teacher tea=new Teacher(rs,rs.getBoolean(8));
					  //rs.close(); ps.close();
					  session.setAttribute("name", tea.name);
					  session.setAttribute("sex",tea.sex);
					  session.setAttribute("birth", tea.birth);
					  session.setAttribute("Id", tea.Id);
				  }
				  rs.close();				  
				  request.getRequestDispatcher("index.jsp").forward(request, response);			  
			  }
			  //login failed
			  //else  response.sendRedirect("www.baidu.com");
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
			  System.out.print("连接失败");
			  response.sendRedirect("www.baidu.com");
		  }
	}
}
