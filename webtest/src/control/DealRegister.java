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

import member.Student;
import member.Teacher;


/**
 * Servlet implementation class DealRegister
 */
public class DealRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DealRegister() {
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
	public String date(String Year,String Month,String Day)
	{
		String ret=Year+"-"+Month+"-"+Day; 
		return ret;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
		
		String name=request.getParameter("Name");
		String sex=request.getParameter("optionsRadios");
		String birth=request.getParameter("birth");
		String Id=request.getParameter("ID");

		String handle=request.getParameter("User");
		String pwd1=request.getParameter("password");
		String pwd2=request.getParameter("password_confirm");
		if (pwd1.equals(pwd2)==false)
		{
			//error
			response.sendRedirect("create-account.jsp");
		}
		
		//connect jdbc
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";
		String role=(String) request.getSession().getAttribute("role");	
		
		try
		{
			Class.forName(driverName);
			Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
			
			boolean Flag=false;
			if (role.equals("Teacher")==true)
			{
				Teacher tea=new Teacher(name,sex,birth,Id,handle,pwd1,false);
				if (!tea.SearchHandle(dbConn, handle))
				{
					tea.InsertDB(dbConn);
					Flag=true;
				}
				else 
				{
					//handle already exist;
					response.sendRedirect("www");
				}
			}
			if (role.equals("Student")==true)
			{
				Student stu=new Student(name,sex,birth,Id,handle,pwd1);
				if (!stu.SearchHandle(dbConn, handle)) 
				{
					stu.InsertDB(dbConn);
					Flag=true;
				}
				else 
				{
					//handle qlready exist.
					response.sendRedirect("www");;
				}
			}
			if (Flag) response.sendRedirect("testlogin.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("http://www.baidu.com");
			e.printStackTrace();
		}
	}
}