/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2018-03-03 14:07:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.appPage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.release();
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
      out.write("\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>兴趣小队社交网站</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"renderer\" content=\"webkit|ie-comp|ie-stand\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\" />\r\n");
      out.write("<meta http-equiv=\"Cache-Control\" content=\"no-siteapp\" />\r\n");
      out.write("<meta name=\"keywords\" content=\"兴趣小队社交网站\">\r\n");
      out.write("<meta name=\"description\" content=\"兴趣小队社交网站，一个站在java开发之路上的程序员交友网站。\">\r\n");
      out.write("<LINK rel=\"Bookmark\" href=\"favicon.ico\" >\r\n");
      out.write("\t<LINK rel=\"Shortcut Icon\" href=\"favicon.ico\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/h-ui/css/H-ui.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/css/common.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/pifu/pifu.css\" />\r\n");
      out.write("\r\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fimport_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<section class=\"container pt-20\">\r\n");
      out.write("\t<!--<div class=\"Huialert Huialert-info\"><i class=\"Hui-iconfont\">&#xe6a6;</i>成功状态提示</div>-->\r\n");
      out.write("  <!--left-->\r\n");
      out.write("  <div class=\"col-sm-9 col-md-9\">\r\n");
      out.write("  \t<!--滚动图-->\r\n");
      out.write("  \t<div class=\"slider_main\">\r\n");
      out.write("            <div class=\"slider\">\r\n");
      out.write("                <div class=\"bd\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\" target=\"_blank\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/img/temp/banner1.jpg\"></a></li>\r\n");
      out.write("                        <li><a href=\"#\" target=\"_blank\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/img/temp/banner8.png\"></a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <ol class=\"hd cl dots\">\r\n");
      out.write("                    <li>1</li>\r\n");
      out.write("                    <li>2</li>\r\n");
      out.write("                </ol>\r\n");
      out.write("                <a class=\"slider-arrow prev\" href=\"javascript:void(0)\"></a>\r\n");
      out.write("                <a class=\"slider-arrow next\" href=\"javascript:void(0)\"></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("  \t\t\r\n");
      out.write("\t\t<div class=\"mt-20 bg-fff box-shadow radius mb-5\">\r\n");
      out.write("\t\t\t<div class=\"tab-category\">\r\n");
      out.write("\t\t\t\t<a href=\"\"><strong class=\"current\">最新发布</strong></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"art_content\">\r\n");
      out.write("\t\t\t<ul class=\"index_arc\" id=\"list\">\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("<!-- ++++++++++++++++++++++++++++++++分页++++++++++++++++++++++++++++++++++++++++ -->\t\t\r\n");
      out.write("  \t\t<div class=\"text-c mb-20\" id=\"moreBlog\">\r\n");
      out.write("  \t\t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/list/findNextPage\" id=\"pageForm\" method=\"post\">\r\n");
      out.write("    \t<input type=\"hidden\" id=\"NewPage\" name=\"NewPage\" value=\"\">\r\n");
      out.write("\t\t <input type=\"hidden\" id=\"_Mname\" name=\"Mname\" value=\"\">\r\n");
      out.write("    </form>\r\n");
      out.write("\t        <a class=\"btn  radius btn-block \" href=\"javascript:page(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${page.page.currentPage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" + 1);\" >点击加载更多</a>\r\n");
      out.write("\t        <a class=\"btn  radius btn-block hidden\" href=\"javascript:;\">加载中……</a>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("<!-- ++++++++++++++++++++++++++++++++++++以上是要修改的主页内容++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->\r\n");
      out.write("  <!--right-->\r\n");
      out.write("  <div class=\"col-sm-3 col-md-3\">\r\n");
      out.write("  \t\r\n");
      out.write("  \t<!--站点声明-->\r\n");
      out.write("        <div class=\"panel panel-default mb-20\">\r\n");
      out.write("            <div class=\"panel-body\">\r\n");
      out.write("                <i class=\"Hui-iconfont\" style=\"float: left;\">&#xe62f;&nbsp;</i>\r\n");
      out.write("                <div class=\"slideTxtBox\">\r\n");
      out.write("                    <div class=\"bd\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"javascript:void(0);\">兴趣小队测试版上线，欢迎访问</a></li>\r\n");
      out.write("                            <li><a href=\"javascript:void(0);\">内容如有侵犯，请立即联系管理员删除</a></li>\r\n");
      out.write("                            <li><a href=\"javascript:void(0);\">本站内容仅供学习和参阅，不做任何商业用途</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("<!------------------------------------博主信息------------------------------------------->\r\n");
      out.write("        <div class=\"bg-fff box-shadow radius mb-20\">\r\n");
      out.write("            <div class=\"tab-category\">\r\n");
      out.write("                <a href=\"\"><strong>博主信息</strong></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"tab-category-item\">\r\n");
      out.write("                <ul class=\"index_recd\">\r\n");
      out.write("                    <li class=\"index_recd_item\"><i class=\"Hui-iconfont\">&#xe653;</i>姓名：");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.SESSION_INSIDERINFO.userName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</li>\r\n");
      out.write("                    <li class=\"index_recd_item\"><i class=\"Hui-iconfont\">&#xe70d;</i>签名：");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.SESSION_INSIDERINFO.motto}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</li>\r\n");
      out.write("                    <li class=\"index_recd_item\"><i class=\"Hui-iconfont\">&#xe63b;</i>邮箱：<a href=\"#\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.SESSION_INSIDERINFO.account}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    <li class=\"index_recd_item\"><i class=\"Hui-iconfont\">&#xe671;</i>定位：阿尔法星球 &middot; 兴趣庄园</li>\r\n");
      out.write("              \r\n");
      out.write("               ");
	
              	 if(session.getAttribute("SESSION_INSIDERINFO") != null){
		   		
      out.write("    \r\n");
      out.write("\t\t\t<!-- ++++++++++++++++++这是弹窗++++++++++++++++++++++++++++ -->\r\n");
      out.write("\t\t     <div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row clearfix\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-12 column\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-12 column\">\r\n");
      out.write("\t\t\t\t\t\t\t <a id=\"modal-934436\" href=\"#modal-container-934436\" role=\"button\" class=\"btn\" data-toggle=\"modal\">添加日志</a>\r\n");
      out.write("\t\t\t\t\t\t\t <!-- ----------提交的表单--------------- -->\r\n");
      out.write("\t\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/list/addJournal\" method=\"POST\" enctype=\"multipart/form-data\">  \r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"modal fade\" id=\"modal-container-934436\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"modal-title\" id=\"myModalLabel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input id=\"Ttitle\" name=\"Ttitle\" type=\"text\" placeholder=\"标题\" style=\"width:100%;\"/>\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<textarea rows=\"10\" cols=\"90\" name=\"Ttext\"></textarea>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t <div class=\"container\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t <!-- 下拉类型菜单 -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<label>日志类型</label>  \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<select id=\"typeList\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option>---请选择---</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t     <!-- 菜单 -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<!--图片添加  -->\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"file\" name=\"file\" id=\"imgOne\" onchange=\"preImg(this.id,'imgPre');\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img id=\"imgPre\"  alt=\"140x140\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/img/tianjia.png\"  class=\"img-rounded\" style=\"width:150px;height: 120px;border-radius: 5px;\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<!--图片添加 END -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t <button type=\"submit\" class=\"btn btn-primary\">保存</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t ");

		                    		}else{
		                        
      out.write("\r\n");
      out.write("\t\t                          <div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row clearfix\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-12 column\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-12 column\">\r\n");
      out.write("\t\t\t\t\t\t\t <a id=\"modal-934436\" href=\"#modal-container-934436\" role=\"button\" class=\"btn\" data-toggle=\"modal\">添加日志</a>\r\n");
      out.write("\t\t\t\t\t\t\t没有登陆，请先登陆\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t ");
 
		                        	 } 
		                         
      out.write("\r\n");
      out.write("<!--------------------------------------------- END -------------------------------------------->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("   \r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("  \t<!--======================================= 博主信息===================================== -->\r\n");
      out.write("  \t\r\n");
      out.write("  \t<!--热门推荐-->\r\n");
      out.write("  \t<div class=\"bg-fff box-shadow radius mb-20\">\r\n");
      out.write("\t\t\t<div class=\"tab-category\">\r\n");
      out.write("\t\t\t\t<a href=\"\"><strong>热门推荐</strong></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"tab-category-item\">\r\n");
      out.write("\t\t\t\t<ul class=\"index_recd\">\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">阻止a标签href默认跳转事件</a>\r\n");
      out.write("\t\t\t\t\t\t<p class=\"hits\"><i class=\"Hui-iconfont\" title=\"点击量\">&#xe622;</i> 276 </p>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li >\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">PHP面试题汇总</a>\r\n");
      out.write("\t\t\t\t\t\t<p class=\"hits\"><i class=\"Hui-iconfont\" title=\"点击量\">&#xe622;</i> 276 </p>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!--点击排行-->\r\n");
      out.write("        <div class=\"bg-fff box-shadow radius mb-20\">\r\n");
      out.write("            <div class=\"tab-category\">\r\n");
      out.write("                <a href=\"\"><strong>点击排行</strong></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"tab-category-item\">\r\n");
      out.write("                <ul class=\"index_recd clickTop\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">AJAX的刷新和前进后退问题解决</a>\r\n");
      out.write("                        <p class=\"hits\"><i class=\"Hui-iconfont\" title=\"点击量\">&#xe6c1;</i> 276° </p>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    \r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("\t\t<!--标签-->\r\n");
      out.write("\t\t<div class=\"bg-fff box-shadow radius mb-20\">\r\n");
      out.write("\t\t\t<div class=\"tab-category\">\r\n");
      out.write("\t\t\t\t<a href=\"\"><strong>标签云</strong></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"tab-category-item\">\r\n");
      out.write("\t\t\t<div class=\"tags\"> <a href=\"http://www.h-ui.net/\">H-ui前端框架</a> \r\n");
      out.write("\t\t\t<a href=\"http://www.h-ui.net/websafecolors.shtml\">Web安全色</a>\r\n");
      out.write("\t\t\t <a href=\"http://www.h-ui.net/Hui-4.4-Unslider.shtml\">jQuery轮播插件</a>\r\n");
      out.write("\t\t\t  <a href=\"http://idc.likejianzhan.com/vhost/korea_hosting.php\">韩国云虚拟主机</a> \r\n");
      out.write("\t\t\t  <a href=\"http://www.h-ui.net/bug.shtml\">IEbug</a>\r\n");
      out.write("\t\t \t  <a href=\"http://www.h-ui.net/site.shtml\">IT网址导航</a>\r\n");
      out.write("\t\t \t   <a href=\"http://www.h-ui.net/icon/index.shtml\">网站常用小图标</a>\r\n");
      out.write("\t\t      <a href=\"http://www.h-ui.net/tools/jsformat.shtml\">web工具箱</a>\r\n");
      out.write("\t\t       <a href=\"http://www.h-ui.net/bg/index.shtml\">网站常用背景素材</a> \r\n");
      out.write("\t\t       <a href=\"http://www.h-ui.net/yuedu/chm.shtml\">H-ui阅读</a>\r\n");
      out.write("\t\t       <a href=\"http://www.h-ui.net/easydialog-v2.0/index.html\">弹出层插件</a>\r\n");
      out.write("\t\t        <a href=\"http://www.h-ui.net/SuperSlide2.1/demo.html\">SuperSlide插件</a> \r\n");
      out.write("\t\t        <a href=\"http://www.h-ui.net/TouchSlide1.1/demo.html\">TouchSlide</a></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!--图片-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/jquery/1.9.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/layer/3.0/layer.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/h-ui/js/H-ui.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/pifu/pifu.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/js/common.js\"></script>\r\n");
      out.write("<script> $(function(){ $(window).on(\"scroll\",backToTopFun); backToTopFun(); }); </script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("appPage/plugin/jquery.SuperSlide/2.1.1/jquery.SuperSlide.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/appPage/js/group.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("$(function(){\r\n");
      out.write("//幻灯片\r\n");
      out.write("jQuery(\".slider_main .slider\").slide({mainCell: \".bd ul\", titCell: \".hd li\", trigger: \"mouseover\", effect: \"leftLoop\", autoPlay: true, delayTime: 700, interTime: 2000, pnLoop: true, titOnClassName: \"active\"})\r\n");
      out.write("//tips\r\n");
      out.write("jQuery(\".slideTxtBox\").slide({titCell: \".hd ul\", mainCell: \".bd ul\", autoPage: true, effect: \"top\", autoPlay: true});\r\n");
      out.write("//标签\r\n");
      out.write("\t$(\".tags a\").each(function(){\r\n");
      out.write("\t\tvar x = 9;\r\n");
      out.write("\t\tvar y = 0;\r\n");
      out.write("\t\tvar rand = parseInt(Math.random() * (x - y + 1) + y);\r\n");
      out.write("\t\t$(this).addClass(\"tags\"+rand)\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"img.lazyload\").lazyload({failurelimit : 3});\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script> \r\n");
      out.write("<script >\r\n");
      out.write("/** \r\n");
      out.write("* 从 file 域获取 本地图片 url \r\n");
      out.write("*/ \r\n");
      out.write("function getFileUrl(sourceId) { \r\n");
      out.write("var url; \r\n");
      out.write("if (navigator.userAgent.indexOf(\"MSIE\")>=1) { // IE \r\n");
      out.write("url = document.getElementById(sourceId).value; \r\n");
      out.write("} else if(navigator.userAgent.indexOf(\"Firefox\")>0) { // Firefox \r\n");
      out.write("url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); \r\n");
      out.write("} else if(navigator.userAgent.indexOf(\"Chrome\")>0) { // Chrome \r\n");
      out.write("url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); \r\n");
      out.write("} \r\n");
      out.write("return url; \r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("/** \r\n");
      out.write("* 将本地图片 显示到浏览器上 \r\n");
      out.write("*/ \r\n");
      out.write("function preImg(sourceId, targetId) { \r\n");
      out.write("var url = getFileUrl(sourceId); \r\n");
      out.write("var imgPre = document.getElementById(targetId); \r\n");
      out.write("imgPre.src = url; \r\n");
      out.write("} \r\n");
      out.write("</script>\r\n");
      out.write("<script >\r\n");
      out.write(" function show(){\r\n");
      out.write("\t var hstr=\"\";\r\n");
      out.write("\t $.ajax({\r\n");
      out.write("\t\t url:\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"+\"app/list/listPage\",\r\n");
      out.write("\t\t success:function(data){\r\n");
      out.write("\t\t\t for (var i = 0; i < data.length; i++) {\r\n");
      out.write("\t\t\t\tvar str=\"<form id='search_form' name='search_form' action='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/list/pageDetail' method='get'>\"\r\n");
      out.write("\t\t\t\t+\"<li class='index_arc_item'>\"\r\n");
      out.write("\t\t\t\t+\"<a href='#' class='pic'>\"\r\n");
      out.write("\t\t\t\t+\"<img class='lazyload' src='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${realPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("tempPic/\"+data[i].timage+\"' alt='应该选' />\"\r\n");
      out.write("\t\t\t\t+\"</a>\"\r\n");
      out.write("\t\t\t\t+\"<h4 class='Ttitle'><a href='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("app/list/pageDetail?Tid=\"+data[i].tid+\"'>\"+data[i].ttitle+\"</a></h4>\"\r\n");
      out.write("\t\t\t\t+\"<div class='date_hits'>\"\r\n");
      out.write("\t\t\t\t+\"<span>\"+data[i].insiderInfo.userName+\"</span>\"\r\n");
      out.write("\t\t\t\t+\"<span>\"+data[i].ttime+\"</span>\"\r\n");
      out.write("\t\t\t\t+\"<span><a href='/article-lists/10.html'>兴趣小队</a></span>\"\r\n");
      out.write("\t\t\t\t+\"<p class='hits'><i class='Hui-iconfont' title='点击量'>&#xe6c1;</i> 276° </p>\"\r\n");
      out.write("\t\t\t\t+\"<p class='commonts'><i class='Hui-iconfont' title='评论'>&#xe622;</i> <span class='cy_cmt_count'>20</span></p>\"\r\n");
      out.write("\t\t\t\t+\"</div>\"\r\n");
      out.write("\t\t\t\t+\"<div class='Ttext'>\"+data[i].ttext+\"</div>\"\r\n");
      out.write("\t\t\t\t+\"</li></form>\";\r\n");
      out.write("\t\t\t\thstr += str;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t $(\"#list\").html(hstr);\r\n");
      out.write("\t\t }\r\n");
      out.write("\t });\r\n");
      out.write(" }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" $(function(){\r\n");
      out.write("\t\t// 初始化用户树\r\n");
      out.write("\t\tshow();\r\n");
      out.write("\t});\r\n");
      out.write(" \r\n");
      out.write(" function page(pagenum){\r\n");
      out.write("\t\t$(\"#NewPage\").val(pagenum);\r\n");
      out.write("\t\t$(\"#_Mname\").val($(\"#menuname\").val());\r\n");
      out.write("\t\t$(\"#pageForm\").submit();\r\n");
      out.write("\t}\t\r\n");
      out.write("</script>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
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

  private boolean _jspx_meth_c_005fimport_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    _jspx_th_c_005fimport_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fimport_005f0.setParent(null);
    // /appPage/index.jsp(28,0) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fimport_005f0.setUrl("top.jsp");
    int[] _jspx_push_body_count_c_005fimport_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fimport_005f0 = _jspx_th_c_005fimport_005f0.doStartTag();
      if (_jspx_th_c_005fimport_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fimport_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fimport_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fimport_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f0);
    }
    return false;
  }
}
