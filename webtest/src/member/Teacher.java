package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Teacher extends Role
{
	boolean Flag;

	String head="update teacher set ";
	String tail="where t_handle='"+handle+"';";

	
	public Teacher(String a, String b, String c, String d, String e, String f,boolean flag) {
		super(a, b, c, d, e, f);
		// TODO Auto-generated constructor stub
		this.Flag=flag;
	}
	public Teacher(ResultSet rs,boolean flag) throws SQLException {
		super(rs);
		this.Flag=flag;
		// TODO Auto-generated constructor stub
	}
	
	public boolean SearchInDB(Connection dbConn,ResultSet rs) throws SQLException
	{
		PreparedStatement ps=dbConn.prepareStatement("select * from teacher where t_handle='"
				+handle+"' and t_password='"+pwd+"';"
				);
		rs=ps.executeQuery();
		if (rs.next()) return true;
		return false;
	}
	
	public boolean InsertDB(Connection dbConn) throws SQLException
	{
		String sql="insert into teacher values(0,?,?,?,?,?,?);";
		
		PreparedStatement ps=dbConn.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2, sex);  ps.setString(3,birth); 
		ps.setString(4, Id);
		ps.setString(5, handle);
		ps.setString(6, pwd);
		
		int flag=ps.executeUpdate();
		return (flag==1);
	}
	
	public boolean Changepwd(Connection dbConn,String old,String now) throws SQLException
	{
		ResultSet rs=null;
		if (SearchInDB(dbConn, rs)==false) return false;
		String pass=rs.getString(7);
		if (old.equals(pass)==true)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"t_password='"+now+"' "+tail);
			ps.executeUpdate();
		}
		return true;
	}
	
	public boolean updateDB(Connection dbConn) throws SQLException 
	{
		ResultSet rs=null;
		if (SearchInDB(dbConn, rs)==false) return false;
		
		Teacher s=new Teacher(rs,rs.getBoolean(8));
		if (name.equals(s.name)==false)	
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"t_name='"+name+"' "+tail);
			ps.executeUpdate();
		}
		if (sex.equals(s.sex)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"t_sex='"+sex+"' "+tail);
			ps.executeUpdate();
		}
		if (birth.equals(s.birth)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"t_birth='"+birth+"' "+tail);
			ps.executeUpdate();
		}
		if (Id.equals(s.Id)==false)
		{
			PreparedStatement ps=dbConn.prepareStatement(head+"t_num='"+Id+"' "+tail);
			ps.executeUpdate();
		}
		return true;
	}
}
