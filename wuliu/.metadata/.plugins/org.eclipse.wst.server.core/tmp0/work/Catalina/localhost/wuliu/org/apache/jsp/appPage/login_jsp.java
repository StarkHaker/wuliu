/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2017-12-20 08:11:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.appPage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/common/common.jsp", Long.valueOf(1511510250091L));
    _jspx_dependants.put("jar:file:/F:/WorkSpace/wuliu/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/wuliu/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153356282000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1503365862614L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
	String realPath=request.getSession().getServletContext().getRealPath("/");
	request.setAttribute("sessionname", request.getSession().getAttribute("username"));

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\" class=\"no-js\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\" />\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>登陆</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/normalize.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/demo.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/style3.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/animate-custom.css\" />\r\n");
      out.write("<!--必要样式-->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/component.css\" />\r\n");
      out.write("<!--[if IE]>\r\n");
      out.write("<script src=\"js/html5.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container demo-1\">\r\n");
      out.write("\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t<div id=\"large-header\" class=\"large-header\">\r\n");
      out.write("\t\t\t\t<canvas id=\"demo-canvas\"></canvas>\r\n");
      out.write("\t\t\t\t<div class=\"logo_box\">\r\n");
      out.write("\t\t\t\t\t<section>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"container_demo\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"hiddenanchor\" id=\"toregister\"></a> <a\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"hiddenanchor\" id=\"tologin\"></a>\r\n");
      out.write("\t\t\t\t\t\t\t<div id=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"login\" class=\"animate form\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/regist/login\" autocomplete=\"on\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>登陆</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"username\" class=\"uname\" data-icon=\"u\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t用户名 </label> <input id=\"UserName\" name=\"UserName\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trequired=\"required\" type=\"text\" placeholder=\"请输入用户名\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"password\" class=\"youpasswd\" data-icon=\"p\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t密码 </label> <input id=\"Passwd\" name=\"Passwd\" required=\"required\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttype=\"password\" placeholder=\"请输入密码\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t <p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t   <label for=\"code\" class=\"\" data-icon=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t验证码 </label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t             <input type=\"text\" id=\"code\" name=\"code\" class=\"text\" maxlength=\"10\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t             style=\"height: 20px;width:30%;margin-left: 0px;\" placeholder=\"请输入验证码\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t              <img id=\"codeImg\" alt=\"验证码\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/admin/code\" onclick=\"changeImg()\"/>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"keeplogin\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"loginkeeping\" id=\"loginkeeping\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvalue=\"loginkeeping\" /> <label for=\"loginkeeping\">记住密码</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"login button\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"登陆\" onclick=\"login();\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"change_link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t没有账号！ <a href=\"#toregister\" class=\"to_register\">注册</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"register\" class=\"animate form\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/regist\" autocomplete=\"on\" method=\"post\" onsubmit=\"return checkForm();\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1>注册</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"usernamesignup\" class=\"uname\" data-icon=\"u\">用户名</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input id=\"usernamesignup\" name=\"usernamesignup\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trequired=\"required\" type=\"text\" placeholder=\"输入用户名\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span id=\"span1\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"emailsignup\" class=\"youmail\" data-icon=\"e\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t邮箱</label> <input id=\"emailsignup\" name=\"emailsignup\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trequired=\"required\" type=\"email\" placeholder=\"输入邮箱\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"passwordsignup\" class=\"youpasswd\" data-icon=\"p\">密码\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</label> <input id=\"passwordsignup\" name=\"passwordsignup\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trequired=\"required\" type=\"password\" placeholder=\"输入密码\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"passwordsignup_confirm\" class=\"youpasswd\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tdata-icon=\"p\">确认密码 </label> <input\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tid=\"passwordsignup_confirm\" name=\"passwordsignup_confirm\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trequired=\"required\" type=\"password\" placeholder=\"确认密码\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"signin button\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"注册\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"change_link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t已有账号！ <a href=\"#tologin\" class=\"to_register\"> 登陆 </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</section>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- /container -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/jquery/1.9.1/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/js/TweenLite.min.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/js/EasePack.min.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/js/rAF.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/js/demo-1.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" >\r\n");
      out.write("       function changeImg() {\r\n");
      out.write("\t // 更换验证码\r\n");
      out.write("        var imgSrc = $(\"#codeImg\");\r\n");
      out.write("        var src = imgSrc.attr(\"src\");\r\n");
      out.write("        imgSrc.attr(\"src\", chgUrl(src));\r\n");
      out.write("    }  \r\n");
      out.write("     //加入时间戳，去缓存机制 \r\n");
      out.write("    function chgUrl(url) {\r\n");
      out.write("        var timestamp = (new Date()).valueOf();if ((url.indexOf(\"&\") >= 0)) {\r\n");
      out.write("            url = url + \"&timestamp=\" + timestamp;\r\n");
      out.write("        } else {\r\n");
      out.write("            url = url + \"?timestamp=\" + timestamp;\r\n");
      out.write("        }\r\n");
      out.write("        return url;\r\n");
      out.write("    }\r\n");
      out.write("     \r\n");
      out.write("   function login(){\r\n");
      out.write("\t   var username=document.getElementById(\"UserName\").value;    \r\n");
      out.write("      var password=document.getElementById(\"Passwd\").value;    \r\n");
      out.write("      var code=document.getElementById(\"code\").value;   \t   \r\n");
      out.write("      var matchResult=true; \r\n");
      out.write("      if(validcode==\"\"){    \r\n");
      out.write("          alert(\"验证码不能为空！\");\r\n");
      out.write("          matchResult=false;    \r\n");
      out.write("   \t  }\r\n");
      out.write("      if(matchResult==true){  \r\n");
      out.write("          $.post(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/regist/login\", {usersname:username,password:pwd, code:code},function(data,status){  \r\n");
      out.write("             var error=data.error;  \r\n");
      out.write("             var result=data.result;    \r\n");
      out.write("             getPic();  \r\n");
      out.write("         if(error==\"error\"){  \r\n");
      out.write("             errors=\"true\";  \r\n");
      out.write("             document.getElementById(\"dialogs\").innerHTML=\"<h3>验证码错误，请重新输入！</h3>\";  \r\n");
      out.write("             dialog();  \r\n");
      out.write("         }  \r\n");
      out.write("         if(result==\"0\"){  \r\n");
      out.write("             document.getElementById(\"dialogs\").innerHTML=\"<h3>您输入的用户名不存在！</h3>\";  \r\n");
      out.write("              document.getElementById(\"username\").value=\"\";  \r\n");
      out.write("             dialog();  \r\n");
      out.write("         }else if(result==\"1\"){  \r\n");
      out.write("             document.getElementById(\"dialogs\").innerHTML=\"<h3>您输入的密码错误，请重新输入！</h3>\";  \r\n");
      out.write("             document.getElementById(\"password\").value=\"\";  \r\n");
      out.write("             dialog();  \r\n");
      out.write("         }     \r\n");
      out.write("        },\"json\");  \r\n");
      out.write("      }    \r\n");
      out.write("     };  \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\tfunction checkForm(){\r\n");
      out.write("\t\t// 校验确认密码:\r\n");
      out.write("\t\tvar password = document.getElementById(\"passwordsignup\").value;\r\n");
      out.write("\t\tvar repassword = document.getElementById(\"passwordsignup_confirm\").value;\r\n");
      out.write("\t\tif(repassword != password){\r\n");
      out.write("\t\t\talert(\"两次密码输入不一致!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction checkUsername(){\r\n");
      out.write("\t\t// 获得文件框值:\r\n");
      out.write("\t\tvar username = document.getElementById(\"usernamesignup\").value;\r\n");
      out.write("\t\t// 1.创建异步交互对象\r\n");
      out.write("\t\tvar xhr = createXmlHttp();\r\n");
      out.write("\t\t// 2.设置监听\r\n");
      out.write("\t\txhr.onreadystatechange = function(){\r\n");
      out.write("\t\t\tif(xhr.readyState == 4){\r\n");
      out.write("\t\t\t\tif(xhr.status == 200){\r\n");
      out.write("\t\t\t\t\tdocument.getElementById(\"span1\").innerHTML = xhr.responseText;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t// 3.打开连接\r\n");
      out.write("\t\txhr.open(\"GET\",\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/regist/user_findByName?username=\"+username,true);\r\n");
      out.write("\t\t// 4.发送\r\n");
      out.write("\t\txhr.send(null);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction createXmlHttp(){\r\n");
      out.write("\t\t   var xmlHttp;\r\n");
      out.write("\t\t   try{ // Firefox, Opera 8.0+, Safari\r\n");
      out.write("\t\t        xmlHttp=new XMLHttpRequest();\r\n");
      out.write("\t\t    }\r\n");
      out.write("\t\t    catch (e){\r\n");
      out.write("\t\t\t   try{// Internet Explorer\r\n");
      out.write("\t\t\t         xmlHttp=new ActiveXObject(\"Msxml2.XMLHTTP\");\r\n");
      out.write("\t\t\t      }\r\n");
      out.write("\t\t\t    catch (e){\r\n");
      out.write("\t\t\t      try{\r\n");
      out.write("\t\t\t         xmlHttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n");
      out.write("\t\t\t      }\r\n");
      out.write("\t\t\t      catch (e){}\r\n");
      out.write("\t\t\t      }\r\n");
      out.write("\t\t    }\r\n");
      out.write("\t\t\treturn xmlHttp;\r\n");
      out.write("\t\t }\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
