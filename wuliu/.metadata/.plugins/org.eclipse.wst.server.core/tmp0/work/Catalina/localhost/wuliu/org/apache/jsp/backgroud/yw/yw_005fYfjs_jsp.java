/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2018-01-28 09:00:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backgroud.yw;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class yw_005fYfjs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>xxxx物流管理平台-电脑开票</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/css/bootstrap.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/css/css.css\" />\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/jquery1.9.0.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/sdmenu.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("backgroud/js/laydate/laydate.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../left.jsp", out, false);
      out.write("\r\n");
      out.write("\t<div class=\"right\" id=\"mainFrame\">\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"right_cont\">\r\n");
      out.write("\t\t\t<ul class=\"breadcrumb\">\r\n");
      out.write("\t\t\t\t当前位置：\r\n");
      out.write("\t\t\t\t<a href=\"#\">首页</a>\r\n");
      out.write("\t\t\t\t<span class=\"divider\">/</span>\r\n");
      out.write("\t\t\t\t<a href=\"#\">业务处理</a>\r\n");
      out.write("\t\t\t\t<span class=\"divider\">/</span> 电脑开票\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t\t<div class=\"title_right\">\r\n");
      out.write("\t\t\t\t<strong>平安物流到货清单</strong>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div style=\"width: 900px; margin: auto\">\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" bgcolor=\"#f1f1f1\">起站：</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"23%\"><input type=\"text\" name=\"input18\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input18\" class=\"span1-1\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" bgcolor=\"#f1f1f1\">到站：</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"23%\"><input type=\"text\" name=\"\" id=\"\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1-1\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" bgcolor=\"#f1f1f1\">装车日期：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" class=\"laydate-icon span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"Calendar\" value=\"2015-08-25\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" bgcolor=\"#f1f1f1\">货单号：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"\" id=\"\" class=\"span1-1\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" bgcolor=\"#f1f1f1\">车牌号：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"\" id=\"\" class=\"span1\" /> <select\r\n");
      out.write("\t\t\t\t\t\t\tname=\"select3\" id=\"select3\" class=\" span1-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>郑州</option>\r\n");
      out.write("\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\"><input type=\"radio\" />\r\n");
      out.write("\t\t\t\t\t\t\t全部&nbsp;&nbsp;&nbsp;&nbsp; <input type=\"radio\" />\r\n");
      out.write("\t\t\t\t\t\t\t已提货&nbsp;&nbsp;&nbsp;&nbsp; <input type=\"radio\" /> 未提货</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" bgcolor=\"#f1f1f1\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"5\"><input type=\"radio\" />\r\n");
      out.write("\t\t\t\t\t\t\t全部&nbsp;&nbsp;&nbsp;&nbsp; <input type=\"radio\" />\r\n");
      out.write("\t\t\t\t\t\t\t郑州一分公司&nbsp;&nbsp;&nbsp;&nbsp; <input type=\"radio\" />\r\n");
      out.write("\t\t\t\t\t\t\t分公司-郑州（分公司）</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<table class=\"margin-bottom-20 table  no-border\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td class=\"text-center\"><input type=\"button\" value=\"确定\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"btn btn-info \" style=\"width: 80px;\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>\r\n");
      out.write("\t\t\t\t\t\t\t\t序号</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>货单号</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>发货日期</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>起站</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>到站</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>发货人</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>收货人</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>收货人电话\r\n");
      out.write("\t\t\t\t\t\t</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>货物名称</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>付款方式</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>运费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>送货费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>中转运费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>件数</strong></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>重量</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>体积</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>包装</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>代收货款</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>返款</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>目的地</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>中转送货费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>保费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>运费合计</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>备注</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>分理处</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>提货方式</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>中转送货费</strong></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\"><strong>中转费合计</strong></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">现付：</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"23%\"><input name=\"input\" type=\"text\" class=\"span1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input\" value=\"0\" /> 计<input name=\"input\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1\" id=\"input\" value=\"0\" /> 张</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">提付：</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"23%\"><input name=\"input13\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1\" id=\"input13\" value=\"0\" /> 计 <input name=\"input2\"\r\n");
      out.write("\t\t\t\t\t\t\ttype=\"text\" class=\"span1\" id=\"input2\" value=\"0\" /> 张</td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"10%\" align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">回单付：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input14\" type=\"text\" class=\"span1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input14\" value=\"0\" /> 计 <input name=\"input3\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1\" id=\"input3\" value=\"0\" /> 张</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">运费合计：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input12\" type=\"text\" class=\"span1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input12\" value=\"0\" />计 <input name=\"input4\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1\" id=\"input4\" value=\"0\" /> 张</td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">送货费：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input5\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input5\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">运费总合计：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input11\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input11\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\">代收款：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input6\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input6\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">返款：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input7\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input7\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">中转费用：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input10\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input10\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\">中转送货费：</td>\r\n");
      out.write("\t\t\t\t\t\t<td><input name=\"input8\" type=\"text\" class=\"span1-1\"\r\n");
      out.write("\t\t\t\t\t\t\tid=\"input8\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" nowrap=\"nowrap\" bgcolor=\"#f1f1f1\">中转费合计：</td>\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"3\"><input name=\"input9\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"span1-1\" id=\"input9\" value=\"0\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<table class=\"margin-bottom-20 table  no-border\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td class=\"text-center\"><input type=\"button\" value=\"打印\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"btn btn-info  margin-right-20\" style=\"width: 80px;\" /><input\r\n");
      out.write("\t\t\t\t\t\t\ttype=\"button\" value=\"数据导出\" class=\"btn btn-info  \"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 80px;\" /></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- 底部 -->\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a\r\n");
      out.write("\t\t\thref=\"http://www.mycodes.net/\" target=\"_blank\">源码之家</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t!function() {\r\n");
      out.write("\t\t\tlaydate.skin('molv');\r\n");
      out.write("\t\t\tlaydate({\r\n");
      out.write("\t\t\t\telem : '#Calendar'\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t}();\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
