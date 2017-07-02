package member;

import java.sql.*;
import com.sun.jndi.url.dns.dnsURLContext;

public class Student extends Role 
{
	String head="update student set ";
	String tail="where s_handle='"+handle+"';";
 	
	public Student(ResultSet rs) throws SQLException
	{
		super(rs);
	}
	public Student(String a, String b, String c, String d, String e, String f) {
		super(a, b, c, d, e, f);
		// TODO Auto-generated constructor stub
	}
	public PreparedStatement ThisPs(Connection dbConn) throws SQLException
	{
		return dbConn.prepareStatement("select * from student where s_handle='"+handle+"' and s_password='"+pwd+"';");
	}
	
	public boolean SearchInDB(Connection dbConn) throws SQLException
	{
		PreparedStatement ps=dbConn.prepareStatement("select * from student where s_handle='"+handle+"' and s_password='"+pwd+"';");
		ResultSet rs=ps.executeQuery();
 		boolean flag=rs.next();
 		rs.close();
 		return flag;
	}
	
	public boolean InsertDB(Connection dbConn) throws SQLException
	{
		String sql="insert into student values(0,?,?,?,?,?,?);";
		
		PreparedStatement ps=dbConn.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2, sex);  ps.setString(3,birth); 
		ps.setString(4, handle);
		ps.setString(5, pwd);
		ps.setString(6, Id);
		
		int flag=ps.executeUpdate();
		return (flag==1);
	}
	
	public void show()
	{
		System.out.println(name);
		System.out.println(sex);
		System.out.println(birth);
		System.out.println(handle);
		System.out.println(pwd);
		System.out.println(Id);
	}
	
	public boolean Changepwd(Connection dbConn,String old,String now) throws SQLException
	{
		if (!SearchInDB(dbConn)) return false; 
		PreparedStatement ps=ThisPs(dbConn);
		ResultSet rs=ps.executeQuery();
		rs.next();
		String pass=rs.getString(6);
		int flag=0;
		if (old.equals(pass)==true)
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"s_password='"+now+"' "+tail);
			flag=Ps.executeUpdate();
		}
		rs.close();
		return flag==1;
	}
	
	public boolean updateDB(Connection dbConn) throws SQLException 
	{
		if (!SearchInDB(dbConn)) return false;
		PreparedStatement ps=ThisPs(dbConn);
		ResultSet rs=ps.executeQuery();
		rs.next();
		Student s=new Student(rs);
		if (name.equals(s.name)==false)	
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"s_name='"+name+"' "+tail);
			Ps.executeUpdate();
		}
		if (sex.equals(s.sex)==false)
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"s_sex='"+sex+"' "+tail);
			Ps.executeUpdate();
		}
		if (birth.equals(s.birth)==false)
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"s_birth='"+birth+"' "+tail);
			Ps.executeUpdate();
		}
		if (Id.equals(s.Id)==false)
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"s_num='"+Id+"' "+tail);
			Ps.executeUpdate();
		}
		rs.close();
		return true;
	}
}
