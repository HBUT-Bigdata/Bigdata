package control;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.Calendar; 


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import member.CLASS;
/*
 * import org.apache.hadoop.conf.Configuration;
 * import org.apache.hadoop.fs.FSDataInputStream;
 * import org.apache.hadoop.fs.FileSystem;
 * import org.apache.hadoop.fs.Path;
 * import org.apache.hadoop.io.IOUtils;
 * import org.apache.hadoop.util.Progressable;
*/

/**
 * Servlet implementation class Upload
 */
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static long num;
    private static String p_time;
    private static String c_time;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    
    private long Pow_mod(long a,long b,long mod)
    {
    	long ret=1;
    	while (b>0)
    	{
    		if (b%2==1) ret=(ret*a)%mod;
    		b>>=1;
    		a=(a*a)%mod;
    	}
    	return ret;
    }
    
    private void dealtime(long year,long month,long day,long h,long m,long s)
    {
    	String ye=String.valueOf(year);
    	String M,D,H,Mo,S;
    	if (month<10)
    		M="0"+String.valueOf(month);
    	else M=String.valueOf(month);
    	
    	if (day<10)
    		D="0"+String.valueOf(day);
    	else D=String.valueOf(day);
    	
    	if (h<10) H="0"+String.valueOf(h);
    	else H=String.valueOf(h);
    	
    	if (m<10) Mo="0"+String.valueOf(m);
    	else Mo=String.valueOf(m);
    	
    	if (s<10) S="0"+String.valueOf(s);
    	else S=String.valueOf(s);
   
    	p_time=ye+"-"+M+"-"+D;
    	c_time=H+":"+Mo+":"+S;
    }
    
    private long getHash()
    {
    	final long mod=1000000007;
    	Calendar c= Calendar.getInstance();
    	long a[]=new long[6];
    	a[0]=c.get(Calendar.YEAR);
    	a[1]=c.get(Calendar.MONDAY);
    	a[2]=c.get(Calendar.DATE);
    	a[3]=c.get(Calendar.HOUR_OF_DAY);
    	a[4]=c.get(Calendar.MINUTE);
    	a[5]=c.get(Calendar.SECOND);
    	dealtime(a[0], a[1], a[2], a[3], a[4], a[5]);
    	long ret=1;
    	for (int i=0;i<6;i++) ret=(ret*(a[i]+1007)   )%mod;
    	return Pow_mod(ret, 1007, mod);
    }
    
    private String MakeFileName(long ret,String ext)
    {
    	num=ret;
    	String s=String.valueOf(ret);
    	return s+ext;
    }
  /*  
    public static void uploadToHdfs(String filename) throws FileNotFoundException, IOException {
		//上传的本地文件地址，d盘下的MPSupermarketMS.rar，只能上传文件不能上传目录
		String localSrc = "/home/ruinan/BigdataUpload/"+filename;
		//上传到Hadoop的路径："hdfs://192.168.72.130:9000/c.rar"
		String dst = "hdfs://ruinan:9000/"+filename;
		//javaIO的知识，通过文件流打开本地文件信息，并生成一个Buffered的输入流。
		InputStream in = new BufferedInputStream(new FileInputStream(localSrc));
		//1. 操作Hadoop的固定步骤，读取Hadoop的配置文件（hadoop/etc/hadoop/*.xml)
		Configuration conf = new Configuration(); //用来读取配置文件
	    //2. 使用Hadoop的FileSystem这个类，去获取文件系统信息，
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
        //3. 生成输出流（Hadoop的写入文件输出流）使用fs.creat函数（保存路径，进度条（输出一次一个进度.））
		OutputStream out = fs.create(new Path(dst), new Progressable() {
			public void progress() {
				System.out.print(".");
			}
		}
		);
		//4. 使用IOTuils工具类，把输入流的数据拷贝到输出流中，每拷贝一次为4096字节，最后的参数true，表示传输完毕后是否关闭。
		IOUtils.copyBytes(in, out, 4096, true);
	}
	public static void readFromHdfs() throws FileNotFoundException, IOException {
		String dst = "hdfs://ruinan:9000/"+"readme.md";
		
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		FSDataInputStream hdfsInStream = fs.open(new Path(dst));

		OutputStream out = new FileOutputStream("/home/ruinan/Down.md");
		byte[] ioBuffer = new byte[1024];
		int readLen = hdfsInStream.read(ioBuffer);

		while (-1 != readLen) {
			out.write(ioBuffer, 0, readLen);
			readLen = hdfsInStream.read(ioBuffer);
		}
		out.close();
		hdfsInStream.close();
		fs.close();
		System.out.println("读取成功！");
	}
    */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // 定义允许上传的文件扩展名
	    String Ext_Name = "in,out,gif,jpg,jpeg,png,bmp,swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb,doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2,mp4";

        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  

	    /**
	     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	     *      response)
	     */
	    HttpSession session=request.getSession();
	    
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://localhost:3306/Bigdata";
		String userName="root";
		String userPwd="123456789";
		Connection dbConn=null;
		

	    
	    


	        // 得到上传文件的保存目录，将上传文件存放在WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
	        String savePath = this.getServletContext().getRealPath("WEB-INF/upload");
	        //String savePath = "/home/ruinan/BigdataUpload";
	        File saveFileDir = new File(savePath);
	        if (!saveFileDir.exists()) {
	            // 创建临时目录
	            saveFileDir.mkdirs();
	        }
	        
	        // 上传时生成临时文件保存目录
	        String tmpPath = this.getServletContext().getRealPath("WEB-INF/tem");
	        
	        File tmpFile = new File(tmpPath);
	        if (!tmpFile.exists()) {
	            // 创建临时目录
	            tmpFile.mkdirs();
	        }

	        // 消息提示
	        String message = "";
	        try {
	        	
				Class.forName(driverName);
				dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
	            // 使用Apache文件上传组件处理文件上传步骤：
	            // 1.创建一个DiskFileItemFactory工厂
	            DiskFileItemFactory factory = new DiskFileItemFactory();
	            // 设置工厂的缓冲区的大小，当上传的文件大小超过缓冲区的大小时，就会生成一个临时文件存放到指定的临时目录当中
	            factory.setSizeThreshold(1024 * 100);// 设置缓冲区的大小为100KB，如果不指定，那么默认缓冲区的大小是10KB
	            // 设置上传时生成的临时文件的保存目录
	            factory.setRepository(tmpFile);
	            // 2.创建一个文件上传解析器
	            ServletFileUpload upload = new ServletFileUpload(factory);
	            // 监听文件上传进度
	            upload.setProgressListener(new ProgressListener() {

	                @Override
	                public void update(long readedBytes, long totalBytes, int currentItem) {
	                    // TODO Auto-generated method stub
	                    //System.out.println("当前已处理：" + readedBytes + "-----------文件大小为：" + totalBytes + "--" + currentItem);
	                }
	            });
	            
	            
	            // 解决上传文件名的中文乱码问题
	            upload.setHeaderEncoding("UTF-8");
	            // 3.判断提交上来的数据是否是上传表单的数据
	            if (!ServletFileUpload.isMultipartContent(request)) {
	                // 按照传统方式获取数据
	                return;
	            }

	            // 设置上传单个文件的最大值
	            //upload.setFileSizeMax(1024 * 1024 * 1);// 1M
	            // 设置上传文件总量的最大值，就是本次上传的所有文件的总和的最大值
	            //upload.setSizeMax(1024 * 1024 * 10);// 10M

	            String C_name=null;
	            List items = upload.parseRequest(request);
	            Iterator itr = items.iterator();
	            while (itr.hasNext()) {
	                FileItem item = (FileItem) itr.next();
	                // 如果fileitem中封装的是普通的输入想数据
	                if (item.isFormField())
	                {
	                	String blockName=item.getFieldName();
	                	String value=item.getString("UTF-8");
	                	if (blockName.equals("ClassName")) C_name=value;
	                }
	                else {
	                    // 得到上传文件的文件名
	                    String fileName = item.getName();
	                    System.out.println("文件名：" + fileName);
	                    if (fileName == null && fileName.trim().length() == 0) {
	                        continue;
	                    }
	                    // 注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的
	                    // 如: C:\Users\H__D\Desktop\1.txt 而有些则是 ： 1.txt
	                    // 处理获取到的上传文件的文件名的路径部分，只保留文件名部分
	                    fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
	                    
	                    // 得到上传文件的扩展名
	                    String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
	                    // 检查扩展名
	                    // 如果需要限制上传的文件类型，那么可以通过文件的扩展名来判断上传的文件类型是否合法
	                    
	                    System.out.println("上传的文件的扩展名是：" + fileExt);
	                    if(!Ext_Name.contains(fileExt)){
	                        System.out.println("上传文件扩展名是不允许的扩展名：" + fileExt);
	                        message = message + "文件：" + fileName + "，上传文件扩展名是不允许的扩展名：" + fileExt + "<br/>";
	                        continue;
	                    }
	                     
	                    
	                    /*
	                    // 检查文件大小
	                    if(item.getSize() == 0) continue;
	                    if(item.getSize() > 1024 * 1024 * 1){
	                        System.out.println("上传文件大小：" + item.getSize());
	                        message = message + "文件：" + fileName + "，上传文件大小超过限制大小：" + upload.getFileSizeMax() + "<br/>";
	                        break;
	                    }
	                    
	                    */
	                    
	                    // 得到存文件的文件名
	                    long hashresult=getHash();
	                    String saveFileName = MakeFileName(hashresult,C_name+"."+fileExt);
	                    
	                    
	                    //保存文件方法一// 获取item中的上传文件的输入流
	                    InputStream is = item.getInputStream();
	                    //创建一个文件输出流
	                    FileOutputStream out = new FileOutputStream(savePath + "/" + saveFileName);
	                    //创建一个缓冲区
	                    byte buffer[] = new byte[1024];
	                    //判断输入流中的数据是否已经读完的标致
	                    int len = 0;
	                    while((len = is.read(buffer)) > 0){
	                        out.write(buffer, 0, len);
	                    }
	                    //关闭输出流
	                    out.close();
	                    //关闭输入流
	                    is.close();
	                    //删除临时文件
	                    item.delete();
	                    
	                    String Rid=(String)session.getAttribute("Rid");
	                    String Id=(String)session.getAttribute("Id");
	                    String c_num=String.valueOf(num);
	                    String g_num=(String) request.getSession().getAttribute("g_num");
	                    CLASS cla=new CLASS(C_name+"."+fileExt,p_time,c_time,c_num,Rid,Id,g_num,g_num,false);
	                    cla.InsertIntoDB(dbConn);
	                    
	                    
	                    //Upload to hdfs
	                    
	  //                  uploadToHdfs(fileName);
	                
	                    //message = message + "文件：" + fileName + "，上传成功<br/>";
	                    
	                    
	                    //保存文件方法二
//	                    File uploadedFile = new File(savePath, saveFileName);
//	                    item.write(uploadedFile);   
	                }
	            }
	        } catch (FileSizeLimitExceededException e) {
	            message = message + "上传文件大小超过限制<br/>";
	            e.printStackTrace();
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } finally {
	        	//session.setAttribute("FFF","1");
	            response.sendRedirect("SearchClass");
	        }
	        return ;
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
