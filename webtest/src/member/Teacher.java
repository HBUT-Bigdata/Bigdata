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
	public void setFlag(boolean t)
	{
		Flag=t;
		return ;
	}
	
	public void show()
	{
		System.out.println(name);
		System.out.println(sex);
		System.out.println(birth);
		System.out.println(Id);
		System.out.println(handle);
		System.out.println(pwd);
		System.out.println(Flag);
	}
	public PreparedStatement ThisPs(Connection dbConn) throws SQLException
	{
		return dbConn.prepareStatement("select * from teacher where t_handle='"+handle+"' and t_password='"+pwd+"';");
	}
	
	public boolean SearchInDB(Connection dbConn) throws SQLException
	{
		PreparedStatement ps=dbConn.prepareStatement("select * from teacher where t_handle='"+handle+"' and t_password='"+pwd+"';");
		ResultSet rs=ps.executeQuery();
		boolean flag=rs.next();
		rs.close();
		return flag;
	}
	
	public boolean SearchHandle(Connection db,String Handle) throws SQLException
	{
		PreparedStatement ps=db.prepareStatement("select * from teacher where t_handle='"+Handle+"';");
		ResultSet rs=ps.executeQuery();
		boolean flag=rs.next();
		rs.close();
		return flag;
	}
	
	public boolean InsertDB(Connection dbConn) throws SQLException
	{
		String sql="insert into teacher values(0,?,?,?,?,?,?,false);";
		
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
		if (SearchInDB(dbConn)==false) return false;
		PreparedStatement ps=ThisPs(dbConn);
		ResultSet rs=ps.executeQuery();
		rs.next();
		String pass=rs.getString(7);
		if (old.equals(pass)==true)
		{
			PreparedStatement Ps=dbConn.prepareStatement(head+"t_password='"+now+"' "+tail);
			Ps.executeUpdate();
		}
		rs.close();
		return true;
	}
	
	public boolean updateDB(Connection dbConn) throws SQLException 
	{
		if (SearchInDB(dbConn)==false) return false;
		PreparedStatement Ps=ThisPs(dbConn);
		ResultSet rs=Ps.executeQuery();
		rs.next();
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
		rs.close();
		return true;
	}
}