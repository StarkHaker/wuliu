/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2018-03-08 16:19:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backgroud.yw;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class yw_005fYdxg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>XXXX物流管理-运单修改</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/css/bootstrap.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/css/css.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/jquery1.9.0.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/sdmenu.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/laydate/laydate.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../left.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("     <div class=\"right\"  id=\"mainFrame\">     \r\n");
      out.write("     <div class=\"right_cont\">\r\n");
      out.write("<ul class=\"breadcrumb\">当前位置：\r\n");
      out.write("  <a href=\"#\">首页</a> <span class=\"divider\">/</span>\r\n");
      out.write("  <a href=\"#\">业务处理</a> <span class=\"divider\">/</span>\r\n");
      out.write("  运单修改\r\n");
      out.write("</ul>\r\n");
      out.write("   <<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/yundan/yundanXG\" autocomplete=\"on\" method=\"post\">\r\n");
      out.write("   <div class=\"title_right\"><strong>订单详情：</strong></div>\r\n");
      out.write("   <div style=\"width:900px; margin:auto\">\r\n");
      out.write("   <table class=\"table table-bordered\" >\r\n");
      out.write("     <tr>\r\n");
      out.write("       <td width=\"12%\" align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">运单号：</td>\r\n");
      out.write("       <td width=\"38%\"><input type=\"text\"  id=\"yundanH\" name=\"yundanH\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.yundanH}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"true\"/></td>\r\n");
      out.write("       <td width=\"12%\" align=\"right\" bgcolor=\"#f1f1f1\">运单日期：</td>\r\n");
      out.write("       <td><input type=\"text\" readonly=\"true\" class=\"laydate-icon span1-1\" id=\"Calendar\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.yundaSJ}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"  /></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">发货人姓名：</td>\r\n");
      out.write("       <td><input type=\"text\" name=\"fahuoXM\" id=\"fahuoXM\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.fahuoXM}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" /></td>\r\n");
      out.write("       <td align=\"right\" bgcolor=\"#f1f1f1\">发货人电话：</td>\r\n");
      out.write("       <td><input type=\"text\" name=\"fahuoDH\" id=\"fahuoDH\" class=\"span1-1\"  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.fahuoDH}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("         <tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">收货人姓名：</td>\r\n");
      out.write("       <td><input type=\"text\" name=\"shhuoXM\" id=\"shhuoXM\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.shhuoXM}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" /></td>\r\n");
      out.write("       <td align=\"right\" bgcolor=\"#f1f1f1\">收货人电话：</td>\r\n");
      out.write("       <td><input type=\"text\" name=\"shhuoDH\" id=\"shhuoDH\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.shhuoDH}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" /></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">运费：</td>\r\n");
      out.write("       <td><input readonly=\"true\" type=\"text\" name=\"input2\" id=\"input2\" class=\"span1-1\"  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.yundaFY}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>元</td>\r\n");
      out.write("       <td align=\"right\" bgcolor=\"#f1f1f1\">运单状态：</td>\r\n");
      out.write("       <td><input type=\"text\" readonly=\"true\" name=\"yundaZT\" id=\"yundaZT\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.yundaZT}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" /></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("       <td align=\"right\"  nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">货物信息：</td>\r\n");
      out.write("       <td><input type=\"text\" readonly=\"true\" name=\"huowuXX\" id=\"huowuXX\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.huowuXX}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("       <td align=\"right\" bgcolor=\"#f1f1f1\">货物数量：</td>\r\n");
      out.write("        <td><input type=\"text\" readonly=\"true\" name=\"huowuSL\" id=\"huowuSL\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.huowuSL}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" /></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("         <tr>\r\n");
      out.write("       <td align=\"right\"  nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">货物重量：</td>\r\n");
      out.write("       <td><input type=\"text\" readonly=\"true\" name=\"input7\" id=\"input7\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.huowuZL}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("       <td align=\"right\"  bgcolor=\"#f1f1f1\">货物大小：</td>\r\n");
      out.write("        <td><input type=\"text\" readonly=\"true\" name=\"input5\" id=\"input5\" class=\"span1-1\"  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.huowuDX}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("       <tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">装货地点：</td>\r\n");
      out.write("       <td><input type=\"text\" readonly=\"true\" name=\"input7\" id=\"input7\" class=\"span1-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.zhhuoDD}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("       <td align=\"right\" bgcolor=\"#f1f1f1\">卸货地点：</td>\r\n");
      out.write("        <td><input type=\"text\" readonly=\"true\" name=\"input5\" id=\"input5\" class=\"span1-1\"  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${Session_yundan.xihuoDD}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/></td>\r\n");
      out.write("     </tr>\r\n");
      out.write("     <!-- 备注 \r\n");
      out.write("      <tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">签收状态：</td>\r\n");
      out.write("       <td colspan=\"3\"><textarea name=\"input9\" id=\"input9\" class=\"span10\"></textarea></td>\r\n");
      out.write("       </tr>\r\n");
      out.write("       <td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">客户评价：</td>\r\n");
      out.write("       <td colspan=\"3\"><textarea name=\"input12\" id=\"input12\" class=\"span10\"></textarea></td>\r\n");
      out.write("       </tr>\r\n");
      out.write("       -->\r\n");
      out.write("   </table>\r\n");
      out.write("   <table  class=\"margin-bottom-20 table  no-border\" >\r\n");
      out.write("        <tr>\r\n");
      out.write("     \t<td class=\"text-center\"><input type=\"submit\" value=\"修改\" class=\"btn btn-info \" style=\"width:106px;\" /></td>\r\n");
      out.write("     \t</form>\r\n");
      out.write("     \t<td class=\"text-center\"><a href=\"yw_Ydck.jsp\" value=\"取消\" class=\"btn btn-info \" style=\"width:80px;\">取消</a></td>\r\n");
      out.write("     </tr>\r\n");
      out.write(" </table>\r\n");
      out.write("   </div> \r\n");
      out.write("     </div>     \r\n");
      out.write("     </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("<!-- 底部 -->\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write(" <script>\r\n");
      out.write("!function(){\r\n");
      out.write("laydate.skin('molv');\r\n");
      out.write("laydate({elem: '#Calendar'});\r\n");
      out.write("laydate.skin('molv');\r\n");
      out.write("laydate({elem: '#Calendar2'});\r\n");
      out.write("}();\r\n");
      out.write(" \r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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