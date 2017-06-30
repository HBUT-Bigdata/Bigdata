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
	
	public boolean SearchInDB(Connection dbConn,ResultSet rs) throws SQLException
	{
		PreparedStatement ps=dbConn.prepareStatement("select * from student where s_handle='"
				+handle+"' and s_password='"+pwd+"';"
				);
		rs=ps.executeQuery();
		if (rs.next()) return true;
		return false;
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
	
	public boolean Changepwd(Connection dbConn,String old,String now) throws SQLException
	{
		ResultSet rs=null;
		if (SearchInDB(dbConn, rs)==false) return false;
		String pass=rs.getString(6);
		if (old.equals(pass)==true)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"s_password='"+now+"' "+tail);
			ps.executeUpdate();
		}
		return true;
	}
	
	public boolean updateDB(Connection dbConn) throws SQLException 
	{
		ResultSet rs=null;
		if (SearchInDB(dbConn, rs)==false) return false;
		
		Student s=new Student(rs);
		if (name.equals(s.name)==false)	
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"s_name='"+name+"' "+tail);
			ps.executeUpdate();
		}
		if (sex.equals(s.sex)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"s_sex='"+sex+"' "+tail);
			ps.executeUpdate();
		}
		if (birth.equals(s.birth)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"s_birth='"+birth+"' "+tail);
			ps.executeUpdate();
		}
		if (Id.equals(s.Id)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"s_num='"+Id+"' "+tail);
			ps.executeUpdate();
		}
		return true;
	}
}
