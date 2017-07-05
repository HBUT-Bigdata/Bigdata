package member;

import java.sql.*;

public class CLASS 
{
	String name;
	String p_time;
	String c_time;
	String num;
	String tid;
	String t_num;
	String gid;
	String g_num;
	boolean Flag;
	
	public CLASS(String c_name,String p_time,String c_time,String c_num,String tid,
				 String t_num,String gid,String g_num,boolean flag)
	{
		name=c_name;
		this.p_time=p_time;
		this.c_time=c_time;
		this.num=c_num;
		this.tid=tid;
		this.t_num=t_num;
		this.gid=gid;
		this.g_num=g_num;
		this.Flag=flag;
	}
	
	private void setFlag(boolean flag)
	{
		Flag=flag;
	}
	
	public PreparedStatement ThisPs(Connection db) throws SQLException
	{
		return db.prepareStatement("select * from class where c_num='"+num+"';");
	}
	
	public boolean SearchInDB(Connection db) throws SQLException
	{
		PreparedStatement ps=ThisPs(db);
		ResultSet rs=ps.executeQuery();
		boolean flag=rs.next();
		rs.close();
		return flag;
	}
	
	public boolean InsertIntoDB(Connection db) throws SQLException
	{
		if (SearchInDB(db)) return false;
		PreparedStatement ps=db.prepareStatement("insert into class values(0,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, p_time);
		ps.setString(3, c_time);
		ps.setString(4, num);
		ps.setString(5, tid);
		ps.setString(6, t_num);
		ps.setString(7, gid);
		ps.setString(8, g_num);
		if (Flag) ps.setString(9,"0");
		else ps.setString(9, "1");
		
		int f=ps.executeUpdate();
		return f==1;
	}
	
}