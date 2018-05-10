<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <title>网站后台管理</title>

	
    <!-- Bootstrap -->
    <link href="${basePath}Resources/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      .nav-style{
        margin-right: 25px;
      }
      .back{
        background: -webkit-linear-gradient(left, rgb(110, 191, 188) 28% , rgb(39, 159, 191) 56%); /* Safari 5.1 - 6.0 */
        background: -o-linear-gradient(right,  rgb(110, 191, 188) 28% , rgb(39, 159, 191) 56%); /* Opera 11.1 - 12.0 */
        background: -moz-linear-gradient(right,  rgb(110, 191, 188) 28% , rgb(39, 159, 191) 56%); /* Firefox 3.6 - 15 */
        background: linear-gradient(to right,  rgb(110, 191, 188) 28% , rgb(39, 159, 191) 56%); /* 标准的语法 */
      }
      .opa{
      opacity:0.8;
    }
    </style>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
      .nav-style{
        margin-right: 25px;
      }
    </style>
  </head>
  <body class="back">
    <nav class="navbar navbar-default opa">
      <div class="navbar-header">
        <a href="#" class="navbar-brand">后台管理</a>
      </div>
      <ul class="nav navbar-nav navbar-right nav-style">
        <li><a href="#">欢迎你某某某</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;注销</a></li>
      </ul>
    </nav>
    
    <div class="row opa">
        <div class="col-md-4"></div>
        <div class="col-md-4">

          <div class="panel panel-default">
            <div class="panel-heading">用户注册</div>
            <div class="panel-body">
              <form>
                <div class="form-group">
                  <label for="exampleInputEmail1">账号</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="账号">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">用户名</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="用户名">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">密码</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">手机号</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="手机号">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">兴趣1</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="从数据库中获取">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">兴趣2</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="从数据库中获取">
                </div>
                <div class="form-group">
                </div>
                <div class="form-group">性别：
                  <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 男
                  </label>
                  <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 女
                  </label>
                </div>
                
                <center><button type="submit" class="btn btn-default">Submit</button></center>
              </form>
            </div>
          </div>

        </div>
        <div class="col-md-4"></div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}Resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}Resources/js/bootstrap.min.js"></script>

  </body>
</html>