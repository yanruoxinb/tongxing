package com.siweisoft.utils.http;

import com.alibaba.fastjson.JSONObject;
import com.sun.xml.internal.ws.util.xml.XmlUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.rmi.ConnectException;
import java.util.List;
import java.util.Map;

public class HttpUtils {
//	public static Logger logger = Logger.getLogger(HttpUtils.class);
	private static String CHARSET = "utf-8";

	private final static String COOKIE = "name=yinyan; token=3c45c394-973d-4aa2-8f14-9ea56d1eb083";
	private static final Logger logger = LoggerFactory.getLogger(HttpUtils.class);
	
	public static String httpRequest(String url, String body, String method) {
		try {
			URL u = new URL(url);
			HttpURLConnection c = (HttpURLConnection) u.openConnection();
			c.setDoOutput(true);
			c.setDoInput(true);
			c.setRequestMethod(method);
			c.setUseCaches(false);
			c.setRequestProperty("Content-Type", "text/html;charset=" + CHARSET);
			c.connect();
			if ("POST".equals(method.toUpperCase())
					|| "PUT".equals(method.toUpperCase())) {
				OutputStream out = c.getOutputStream();
				out.write(body.getBytes());
				out.flush();
				out.close();
			}

//			System.out.println("ResponseCode:" + c.getResponseCode());
			if (c.getResponseCode() == HttpURLConnection.HTTP_OK) {
				InputStream in = c.getInputStream();
				BufferedReader br = new BufferedReader(new InputStreamReader(
						in, CHARSET));

				String line = null;
				StringBuilder sb = new StringBuilder();
				while ((line = br.readLine()) != null) {
					sb.append(line);
				}
				in.close();
				c.disconnect();
				return sb.toString();

			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}


	/**
	 * 向指定URL发送GET,POST方法的请求
	 *
	 * @param url
	 * 发送请求的URL
	 * @param requestMethod
	 * 请求方法("GET","POST"）
	 * @param param
	 * 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
	 * @return
	 */
	public static Map sendHttpRequestReturnXml(String url, String requestMethod, String param) {
		String result = "";
		BufferedReader in = null;
		Map resultMap = null;
		try {
			String urlNameString = (url).replace("\"", "%22").replace("{", "%7b").replace("}", "%7d");
			URL realUrl = new URL(urlNameString);
			// 打开和URL之间的连接
			HttpURLConnection connection = (HttpURLConnection) realUrl.openConnection();
			// 设置通用的请求属性
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.setRequestProperty("Cookie", COOKIE);
			// 发送POST请求必须设置如下两行
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod(requestMethod);
			if (null != param) {
				OutputStream outputStream = connection.getOutputStream();
				outputStream
						.write(param.replace("\"", "%22").replace("{", "%7b").replace("}", "%7d").getBytes("UTF-8"));
				outputStream.close();
			}
			// 建立实际的连接
			connection.connect();
			// 获取所有响应头字段
			Map<String, List<String>> map = connection.getHeaderFields();
			// 遍历所有的响应头字段
			for (String key : map.keySet()) {
				System.out.println(key + "--->" + map.get(key));
			}
			// 定义 BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			System.out.println(result);
			//resultMap = XmlUtil.parseStrXml(result);
		} catch (Exception e) {
			System.out.println("发送" + requestMethod + "请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return resultMap;
	}

	/**
	 * 向指定URL发送GET,POST方法的请求

	 * @param url 发送请求的URL
	 * @param requestMethod 请求方法("GET","POST"）
	 * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
	 * @return 所代表远程资源的响应结果
	 */
	public static JSONObject sendHttpRequest(String url, String requestMethod, String param) {
		JSONObject jsonObject = null;
		String result = "";
		BufferedReader in = null;
		try {
			String urlNameString = (url).replace("\"", "%22").replace("{", "%7b").replace("}", "%7d").replace(" ","+").replace("#","23%");
			URL realUrl = new URL(urlNameString);
			//<editor-fold desc="打开和URL之间的连接">
			HttpURLConnection connection = (HttpURLConnection) realUrl.openConnection();
			//</editor-fold>
			//<editor-fold desc="设置通用的请求属性">
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.setRequestProperty("Cookie", COOKIE);
			//</editor-fold>
			//<editor-fold desc="发送POST请求必须设置如下两行">
			connection.setDoOutput(true);
			connection.setDoInput(true);
			//</editor-fold>
			connection.setRequestMethod(requestMethod.toUpperCase());
			if (null != param) {
				OutputStream outputStream = connection.getOutputStream();
				outputStream.write(param.replace("\"", "%22").replace("{", "%7b").replace("}", "%7d").replace(" ","+").replace("#","23%").getBytes("UTF-8"));
				outputStream.close();
			}
			// 建立实际的连接
			connection.connect();
			// 获取所有响应头字段
//            Map<String, List<String>> map = connection.getHeaderFields();
			// 遍历所有的响应头字段
//            for (String key : map.keySet()) {
//                System.out.println(key + "--->" + map.get(key));
//            }
			// 定义 BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			if (result.startsWith("["))
				result = "{data:" + result + "}";
			//System.out.println(result);
			jsonObject = JSONObject.parseObject(result.toString());
		} catch (Exception e) {
			logger.error("发送" + requestMethod + "请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return jsonObject;
	}

	/**
	 * 向指定URL发送GET,POST方法的请求

	 * @param url 发送请求的URL
	 * @param requestMethod 请求方法("GET","POST"）
	 * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
	 * @return 所代表远程资源的响应结果
	 */
	public static String sendHttpRequestStr(String url, String requestMethod, String param) {
		String result = "";
		BufferedReader in = null;
		try {


			String urlNameString = (url).replace("\"", "%22").replace("{", "%7b").replace("}", "%7d");
			URL realUrl = new URL(urlNameString);

			//<editor-fold desc="打开和URL之间的连接">
			HttpURLConnection connection = (HttpURLConnection) realUrl.openConnection();
			connection.setConnectTimeout(3000);
			connection.setReadTimeout(3000);
			//</editor-fold>
			//<editor-fold desc="设置通用的请求属性">
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.setRequestProperty("Cookie", COOKIE);
			//</editor-fold>
			//<editor-fold desc="发送POST请求必须设置如下两行">
			connection.setDoOutput(true);
			connection.setDoInput(true);
			//</editor-fold>

			connection.setRequestMethod(requestMethod.toUpperCase());
			if (null != param) {
				OutputStream outputStream = connection.getOutputStream();
				outputStream
						.write(param.replace("\"", "%22").replace("{", "%7b").replace("}", "%7d").getBytes("UTF-8"));
				outputStream.close();
			}
			// 建立实际的连接
			connection.connect();
			// 获取所有响应头字段
			Map<String, List<String>> map = connection.getHeaderFields();
			// 遍历所有的响应头字段
			for (String key : map.keySet()) {
				System.out.println(key + "--->" + map.get(key));
			}
			// 定义 BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			if (result.startsWith("["))
				result = "{data:" + result + "}";
			System.out.println(result);
		} catch (Exception e) {
			System.out.println("发送" + requestMethod + "请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	public static String sendPost(String urlString) {
		String result = "";
		try {
			URL postUrl = new URL(urlString);
			HttpURLConnection connection = (HttpURLConnection) postUrl.openConnection();
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod("POST");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setConnectTimeout(3000);
			connection.setReadTimeout(3000);
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			connection.setChunkedStreamingMode(5);
			connection.connect();
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
			String line;
			while ((line = reader.readLine()) != null) {
				result += line;
			}
			reader.close();
			connection.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static String sendPostParams(String sendUrl,String params){
		String result = "";
		HttpURLConnection connection = null;
		BufferedReader reader = null;
		try {
			URL postUrl = new URL(sendUrl);
			// 打开连接
			connection = (HttpURLConnection) postUrl
					.openConnection();
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod("POST");
			connection.setConnectTimeout(10000);
			connection.setReadTimeout(10000);
			// Post 请求不能使用缓存
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			connection.connect();
			DataOutputStream out = new DataOutputStream(connection
					.getOutputStream());
			// The URL-encoded contend
			// 正文，正文内容其实跟get的URL中'?'后的参数字符串一致
//			String params =URLEncoder.encode(paramsStr,"UTF-8");
			// DataOutputStream.writeBytes将字符串中的16位的unicode字符以8位的字符形式写道流里面
			out.writeBytes(params);
			out.flush();
			out.close(); // flush and close
			reader = new BufferedReader(new InputStreamReader(
					connection.getInputStream(), "UTF-8"));
			String line = "";
			while ((line = reader.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			//System.out.println("发送" + sendUrl + "请求出现异常！" + e);
			e.printStackTrace();
		}finally{
			if(reader != null){
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				connection.disconnect();
			}
		}
		return result;
	}

	public static String sendPostParamsForPay(String sendUrl,String params){
		String result = "";
		HttpURLConnection connection = null;
		BufferedReader reader = null;
		try {
			URL postUrl = new URL(sendUrl);
			// 打开连接
			connection = (HttpURLConnection) postUrl
					.openConnection();
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod("POST");
			// Post 请求不能使用缓存
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			connection.connect();
			DataOutputStream out = new DataOutputStream(connection
					.getOutputStream());
			// DataOutputStream.writeBytes将字符串中的16位的unicode字符以8位的字符形式写道流里面
			out.writeBytes(params);
			out.flush();
			out.close(); // flush and close
			reader = new BufferedReader(new InputStreamReader(
					connection.getInputStream()));
			String line = "";
			while ((line = reader.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送" + sendUrl + "请求出现异常！" + e);
			e.printStackTrace();
		}finally{
			if(reader != null){
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				connection.disconnect();
			}
		}
		return result;
	}

	/**
	 * 获取当前域名
	 * @param request
	 * @return
	 */
	public static String getBasePath(HttpServletRequest request) {
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
		return basePath;
	}

	/**
	 * 发起https请求并获取结果
	 *
	 * @param requestUrl
	 * 请求地址
	 * @param requestMethod
	 * 请求方式（GET、POST）
	 * @param outputStr
	 * 提交的数据
	 * @return JSONObject(通过JSONObject.get(key)的方式获取json对象的属性值)
	 */
	public static String httpsRequest(String requestUrl, String requestMethod, String outputStr) {
		StringBuffer buffer = new StringBuffer();
		try {
			// 创建SSLContext对象，并使用我们指定的信任管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocketFactory对象
			SSLSocketFactory ssf = sslContext.getSocketFactory();
			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();
			httpUrlConn.setSSLSocketFactory(ssf);
			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			httpUrlConn.setRequestMethod(requestMethod);
//			if ("GET".equalsIgnoreCase(requestMethod))
				httpUrlConn.connect();
			// 当有数据需要提交时
			if (null != outputStr) {
				OutputStream outputStream = httpUrlConn.getOutputStream();
				// 注意编码格式，防止中文乱码
				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}
			// 将返回的输入流转换成字符串
			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			return buffer.toString();
		} catch (ConnectException ce) {
			logger.error("发送" + requestMethod + "请求出现异常！" + ce);
			ce.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return buffer.toString();
	}

	public static void main(String[] args) throws IOException {
//        HttpUtil.sendHttpRequest("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN","POST","");
//		String url = "http://localhost:8090/weixin/callback";
//		Map<String,Object> params = new HashMap<>();
//		params.put("msg_signature","45543634f320a8ab75b09c7c752be6b27db7f8a5");
//		params.put("timestamp","1474610798");
//		params.put("nonce","806280251");
//		String json = JSON.toJSONString(params);
//		String result = HttpUtils.httpRequest(url,json,"POST");
//		System.out.println(result);
		System.out.println(1);
		httpRequest("http://v.6.cn/737206",null,"GET");
	}
}
//{"bounds":
//		{"southwest":
//		  {"lng":-79.639219,"lat":43.5810246},
//		    "northeast":{"lng":-79.1168971,"lat":43.8554579}
//		 },
//		"viewport":{
//		      "southwest":{"lng":-79.639219,"lat":43.5810246},
//		      "northeast":{"lng":-79.1168971,"lat":43.8554579}
//		 },
//		 "location_type":"APPROXIMATE",
//		 "location":{"lng":-79.3831843,"lat":43.653226}
//		}