/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2018-02-14 15:05:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.client;

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
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/common/common.jsp", Long.valueOf(1511510250091L));
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>会员注册</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/reset.css\"/>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/common.css\"/>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/thems.css\"/>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<!--头部-->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("\r\n");
      out.write("<!--头部-->\r\n");
      out.write("<!--中间部分-->\r\n");
      out.write("<div class=\"main clearfix\">\r\n");
      out.write("    <div class=\"login_reg clearfix\">\r\n");
      out.write("    \t<!--邮箱注册-->\r\n");
      out.write("        <div class=\"reg\">\r\n");
      out.write("        \t<div class=\"lore_top\">\r\n");
      out.write("            \t<span>\r\n");
      out.write("                \t<em>邮箱注册</em>\r\n");
      out.write("                </span>\r\n");
      out.write("            </div>\r\n");
      out.write("        \t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/client/regist\" method=\"post\">\r\n");
      out.write("        \t<ul>\r\n");
      out.write("            \t<li>\r\n");
      out.write("                \t<span>电子邮箱：</span>\r\n");
      out.write("                    <input name=\"kehuYX\" type=\"text\" placeholder=\"请输入常用邮箱\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<span>密码：</span>\r\n");
      out.write("                    <input name=\"kehuMM\" type=\"text\" placeholder=\"6-16个字符\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<span>确认密码：</span>\r\n");
      out.write("                    <input name=\"kehuMM\" type=\"text\" placeholder=\"和密码一致\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<span>验证码：</span>\r\n");
      out.write("                    <input name=\"\" type=\"text\" placeholder=\"\">\r\n");
      out.write("                    <a href=\"\" class=\"yzm\">获取验证码</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<input name=\"\" class=\"check\" type=\"checkbox\" value=\"\" checked=\"checked\">\r\n");
      out.write("                    已阅读\r\n");
      out.write("                    <a href=\"\">找物流网上服务协议</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"tijiao\">\r\n");
      out.write("                \t<input type=\"submit\" class=\"submit\" value=\"注册\">\r\n");
      out.write("                </li>\r\n");
      out.write("                \r\n");
      out.write("            </ul>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--邮箱注册-->\r\n");
      out.write("    \t<!--登录-->\r\n");
      out.write("        <div class=\"login\">\r\n");
      out.write("        \t<div class=\"lore_top\">\r\n");
      out.write("            \t<span>\r\n");
      out.write("                \t<em>马上登录</em>\r\n");
      out.write("                </span>\r\n");
      out.write("            </div>\r\n");
      out.write("        \t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/client\" method=\"post\">\r\n");
      out.write("        \t<ul>\r\n");
      out.write("            \t<li>\r\n");
      out.write("                \t<span>用户名：</span>\r\n");
      out.write("                    <input name=\"kehuYX\" type=\"text\" placeholder=\"用户名/密码\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<span>密码：</span>\r\n");
      out.write("                    <input name=\"kehuMM\" type=\"text\" placeholder=\"6-16个字符\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"tijiao\">\r\n");
      out.write("                \t<input type=\"submit\" class=\"submit\" value=\"登录\">\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                \t<p>\r\n");
      out.write("                    \t使用合作帐号登录：\r\n");
      out.write("                        <a href=\"\"><img src=\"images/icon10.png\"/></a>\r\n");
      out.write("                        <a href=\"\"><img src=\"images/icon12.png\"/></a>\r\n");
      out.write("                        <a href=\"\"><img src=\"images/icon13.png\"/></a>\r\n");
      out.write("                    </p>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--登录-->\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"space_hx\">&nbsp;</div>\r\n");
      out.write("    <div class=\"f_main clearfix\">\r\n");
      out.write("    \t<ul>\r\n");
      out.write("        \t<li class=\"title\">\r\n");
      out.write("            \t<span>快捷下单</span>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">收发货人管理，快速选择下单</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">按模板下单，无需重复填写</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">便捷城市选择控件</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <ul>\r\n");
      out.write("        \t<li class=\"title\">\r\n");
      out.write("            \t<span>掌控物流</span>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">实时追踪，邮件提醒</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">”我的订单状态一览“</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">管理历史订单，按需导出</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <ul>\r\n");
      out.write("        \t<li class=\"title\">\r\n");
      out.write("            \t<span>在线支付</span>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">批量支付，一键完成</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">在线支付，安全快捷</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">收发货人均可支付</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <ul>\r\n");
      out.write("        \t<li class=\"title\">\r\n");
      out.write("            \t<span>在线理赔</span>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">首届物流在线理赔</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("            \t<a href=\"\">线上提交，专人受理</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!--中间部分-->\r\n");
      out.write("<div class=\"space_hx\">&nbsp;</div>\r\n");
      out.write("<!--底部-->\r\n");
      out.write("<div class=\"foot_bg\">\r\n");
      out.write("\t<div class=\"foot\">\r\n");
      out.write("    \t<div class=\"foot_t\">\r\n");
      out.write("        \t<a href=\"\">业务介绍</a>\r\n");
      out.write("            <a href=\"\">联系我们</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"copy\">\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\t\r\n");
      out.write("</div>\r\n");
      out.write("<!--底部-->\r\n");
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