/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2017-11-25 08:10:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backgroud.yw;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class yw_005fXlgl_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>XXXX物流管理系统 - 线路管理</title>\r\n");
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
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../left.jsp", out, false);
      out.write("\r\n");
      out.write("  <div class=\"right\"  id=\"mainFrame\">\r\n");
      out.write("     \r\n");
      out.write("     <div class=\"right_cont\">\r\n");
      out.write(" <ul class=\"breadcrumb\">当前位置：\r\n");
      out.write("  <a href=\"#\">首页</a> <span class=\"divider\">/</span>\r\n");
      out.write("  <a href=\"#\">业务处理</a> <span class=\"divider\">/</span>\r\n");
      out.write("  电脑开票\r\n");
      out.write("</ul>\r\n");
      out.write("      \r\n");
      out.write("   <div class=\"title_right\"><span class=\"pull-right margin-bottom-5\"><a  class=\"btn btn-info btn-small\"  id=\"modal-9735581\" href=\"#modal-container-9735581\" role=\"button\" data-toggle=\"modal\"><i class=\"icon-plus icon-white\"></i> 添加线路城市</a></span><strong>线路管理</strong></div>\r\n");
      out.write("    \r\n");
      out.write(" \r\n");
      out.write("   \r\n");
      out.write("   <div id=\"modal-container-9735581\" class=\"modal hide fade\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"width:600px; margin-left:-300px; top:20%\">\r\n");
      out.write("\t\t\t\t<div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>\r\n");
      out.write("\t\t\t\t\t<h3 id=\"myModalLabel\">\r\n");
      out.write("\t\t\t\t\t\t线路管理\r\n");
      out.write("\t\t\t\t\t</h3>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t <table class=\"table table-bordered\">\r\n");
      out.write("  <tbody>\r\n");
      out.write("    \r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\">城市:</td>\r\n");
      out.write("      <td align=\"left\"><input name=\"endTextBox\" type=\"text\" id=\"endTextBox\" class=\"span1-1\" />\r\n");
      out.write("        [*]</td>\r\n");
      out.write("      <td align=\"right\">缩写:</td>\r\n");
      out.write("      <td align=\"left\" colspan=\"3\"><input name=\"tbx_short2\" type=\"text\" id=\"tbx_short2\" class=\"span1-1\" />\r\n");
      out.write("        [*]</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\">联系人</td>\r\n");
      out.write("      <td align=\"left\"><input name=\"manTextBox\" type=\"text\" id=\"manTextBox\" class=\"span1-1\" /></td>\r\n");
      out.write("      <td align=\"right\">电话:</td>\r\n");
      out.write("      <td align=\"left\" colspan=\"3\"><input name=\"phoneTextBox\" type=\"text\" id=\"phoneTextBox\" class=\"span1-1\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\">郑货总部分成比例:</td>\r\n");
      out.write("      <td align=\"left\"><input name=\"TextBox1\" type=\"text\" value=\"0\" id=\"TextBox1\" class=\"span1-1\" />\r\n");
      out.write("        %</td>\r\n");
      out.write("      <td align=\"right\">郑货分公司分成比例:</td>\r\n");
      out.write("      <td colspan=\"3\" align=\"left\"><input name=\"TextBox2\" type=\"text\" value=\"0\" id=\"TextBox2\" class=\"span1-1\" />\r\n");
      out.write("        %</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\">返货总部分成比例:</td>\r\n");
      out.write("      <td align=\"left\"><input name=\"TextBox3\" type=\"text\" value=\"0\" id=\"TextBox3\" class=\"span1-1\" />\r\n");
      out.write("        %</td>\r\n");
      out.write("      <td align=\"right\">返货分公司分成比例:</td>\r\n");
      out.write("      <td colspan=\"3\" align=\"left\"><input name=\"TextBox4\" type=\"text\" value=\"0\" id=\"TextBox4\" class=\"span1-1\" />\r\n");
      out.write("        %</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td colspan=\"6\" align=\"center\">网内中转货分成比例</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\">（中转）发货方分成比例:</td>\r\n");
      out.write("      <td align=\"left\"><input name=\"TextBox5\" type=\"text\" value=\"0\" id=\"TextBox5\" class=\"span1-1\" />\r\n");
      out.write("        %</td>\r\n");
      out.write("      <td align=\"right\">（中转）收货方分成比例:</td>\r\n");
      out.write("      <td colspan=\"3\" align=\"left\"><input name=\"TextBox6\" type=\"text\" value=\"0\" id=\"TextBox6\"class=\"span1-1\"  />\r\n");
      out.write("        %</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </tbody>\r\n");
      out.write("</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t <button class=\"btn btn-info\" data-dismiss=\"modal\" aria-hidden=\"true\" style=\"width:80px\">保存</button> \r\n");
      out.write("                     <button class=\"btn btn-info\" data-dismiss=\"modal\" aria-hidden=\"true\" style=\"width:80px\">取消</button> \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("   \r\n");
      out.write("   <table class=\"table table-bordered table-striped table-hover\">\r\n");
      out.write("     <tbody>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\"><strong>城市</strong></td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><strong>缩写</strong></td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><strong>联系人</strong></td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><strong>电话</strong></td>\r\n");
      out.write("         <td><strong>郑货总部分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>郑货分公司分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>返货总部分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>返货分公司分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>内线中转发货方分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>内线中转收货方分成比例（%）</strong></td>\r\n");
      out.write("         <td><strong>至郑单价（元/公斤㎏）</strong></td>\r\n");
      out.write("         <td><strong>至郑单价（元/立方m3）</strong></td>\r\n");
      out.write("         <td><strong>至郑起步价</strong></td>\r\n");
      out.write("         <td width=\"80\" nowrap=\"nowrap\"><strong> 操作 </strong></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr> <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">郑州</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">zz </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> </td>\r\n");
      out.write("         <td nowrap=\"nowrap\"> 0371-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("       <tr align=\"center\">\r\n");
      out.write("         <td nowrap=\"nowrap\">滑县</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">hx</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">&nbsp;</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0372-8628715</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\">0</td>\r\n");
      out.write("         <td nowrap=\"nowrap\"><a href=\"#\">删除</a> <a href=\"#\">编辑</a></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("     </tbody>\r\n");
      out.write("   </table>\r\n");
      out.write("   <table  class=\"margin-bottom-20 table  no-border\" >\r\n");
      out.write("        <tr>\r\n");
      out.write("     \t<td class=\"text-center\"><input type=\"button\" value=\"打印\" class=\"btn btn-info\" style=\"width:80px;\" /></td>\r\n");
      out.write("     </tr>\r\n");
      out.write(" </table>\r\n");
      out.write("      \r\n");
      out.write("   \r\n");
      out.write("     </div>     \r\n");
      out.write("     </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("<!-- 底部 -->\r\n");
      out.write("<div id=\"footer\">版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://www.mycodes.net/\" target=\"_blank\">源码之家</a></div>\r\n");
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
