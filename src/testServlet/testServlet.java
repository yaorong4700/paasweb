package testServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.NameValuePair;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONTokener;

import net.sf.json.JSONObject;
import sun.net.www.protocol.http.HttpURLConnection;

/**
 * Servlet implementation class testServlet
 */
@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public testServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Preg_ID = request.getParameter("preg_id");
		String Preg_CPU = request.getParameter("preg_cpu");
		double   d_Preg_CPU   =   Double.parseDouble(Preg_CPU); 
		String Preg_Mem = request.getParameter("preg_mem");
		double   d_Preg_Mem   =   Double.parseDouble(Preg_Mem); 
		String Preg_DiskSpace = request.getParameter("preg_diskspace");
		String Preg_Instances = request.getParameter("preg_instances");
		double   d_Preg_Instances   =   Double.parseDouble(Preg_Instances);
		String Preg_CMD = request.getParameter("preg_cmd");
		PrintWriter writer = response.getWriter();
		JSONObject obj = new JSONObject();
		obj.put("id", Preg_ID);
		obj.put("cpus", d_Preg_CPU);
		obj.put("mem", d_Preg_Mem);
		obj.put("instances", d_Preg_Instances);
		//obj.put("disk", Preg_Instances);
		obj.put("cmd", Preg_CMD);
		writer.println(obj);
		String str = obj.toString();
		//str="{\"container\":{\"type\":\"DOCKER\",\"docker\":{\"image\":\"ubuntu:14.04\",\"network\":\"BRIDGE\",\"portMappings\":[{\"containerPort\":5454,\"hostPort\":0,\"protocol\":\"tcp\"}]}},\"id\":\"dockertest2\",\"instances\":3,\"cpus\":0.5,\"mem\":512,\"cmd\":\"/bin/bash\"}";
		//str="{\"cpus\":0.5,\"cmd\":\"ok\",\"id\":\"cci-docker\",\"instances\":2,\"mem\":30}";
		// request.setAttribute("RJson", str);
		// request.getRequestDispatcher(
		// "http://localhost:8180/passweb/rrrr").forward(request,response);
		String result = null;
		String encoderJson = URLEncoder.encode(str, HTTP.UTF_8);
		//java.net.URLDecoder   urlDecoder   =   new   java.net.URLDecoder();    
        String   s   =     URLDecoder.decode(encoderJson,HTTP.UTF_8); 
		writer.println(s);
		
		HttpPost httpPost = new HttpPost("http://192.168.1.89:8080/v2/apps");
		httpPost.addHeader(HTTP.CONTENT_TYPE, "application/json");
		StringEntity se = new StringEntity(s);
		se.setContentType("text/json");
		se.setContentEncoding(new BasicHeader(HTTP.CONTENT_TYPE, "application/json"));
		httpPost.setEntity(se);
		HttpResponse httpResponse = new DefaultHttpClient().execute(httpPost);
		
			HttpEntity httpEntity = httpResponse.getEntity();
			result = EntityUtils.toString(httpEntity);// 取出应答字符串
			writer.println(httpResponse.getStatusLine().getStatusCode());
			writer.println(result);
			if (httpResponse.getStatusLine().getStatusCode() == 201) {
				request.setAttribute("id",Preg_ID);      
				RequestDispatcher   requestDispatcher=request.getRequestDispatcher("/rrrr.jsp");   
				requestDispatcher.forward(request,response);
			}
	}

}
