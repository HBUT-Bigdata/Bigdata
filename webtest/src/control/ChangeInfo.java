package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.Student;
import member.Teacher;

/**
 * Servlet implementation class ChangeInfo
 */
public class ChangeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeInfo() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
		
		HttpSession session=request.getSession();
		
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";
		
		session.setAttribute("from","person");
		String role=(String)session.getAttribute("role");
		String handle=(String) session.getAttribute("handle");
		String Id=(String) session.getAttribute("Id");

		
		String name=request.getParameter("Name");
		String sex=request.getParameter("optionsRadios");
		String birth=request.getParameter("birth");
		String old_pwd=request.getParameter("old_password");
		String new_pwd=request.getParameter("new_password");
		
		
		try 
		{
			Class.forName(driverName);
			Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
			
			if (role.equals("Student")) 
			{
				
				Student stu=new Student(name,sex,birth,Id,handle,old_pwd);
				stu.updateDB(dbConn);
				
				//update password
				
				if (!new_pwd.isEmpty()) stu.Changepwd(dbConn, old_pwd, new_pwd);
			
			}
			else if (role.equals("Teacher"))
			{
				Teacher tea=new Teacher(name,sex,birth,Id,handle,old_pwd,false);
				tea.updateDB(dbConn);
				
				//update password
				
				if (!new_pwd.isEmpty()) tea.Changepwd(dbConn, old_pwd, new_pwd);
			
			}
			request.getRequestDispatcher("ReadInfo").forward(request, response);
			return ;
		
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
