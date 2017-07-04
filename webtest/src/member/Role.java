package member;

import java.sql.*;

public class Role 
{
	public String name;
	public String sex;
	public String birth;
	public String Id;
	public String handle;
	public String pwd;
		
	public Role(String a,String b,String c,String d,String e,String f)
	{
		name=a;
		sex=b;
		birth=c;
		Id=d;
		handle=e;
		pwd=f;
	}
	public Role (ResultSet rs) throws SQLException {
		name=rs.getString(2);
		sex=rs.getString(3);
		birth=rs.getString(4);
		Id=rs.getString(5);
		handle=rs.getString(6);
		pwd=rs.getString(7);
	}
}