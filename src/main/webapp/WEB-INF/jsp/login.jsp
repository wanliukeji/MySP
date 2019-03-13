
<%--
  Created by IntelliJ IDEA.
  User: Chenny
  Date: 2019/3/11
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>天矶系统</title>

    <%--<link href=${pageContext.request.contextPath}/css/nprogress.css" rel="stylesheet" charset="UTF-8">--%>
    <link href="${pageContext.request.contextPath}/vendors/animate.css/animate.min.css" rel="stylesheet" charset="UTF-8">
   <link href="${pageContext.request.contextPath}/css/custom.min.css" rel="stylesheet" charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/chenny.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  </head>
  <body class="login" style="background-image: url('${pageContext.request.contextPath}/images/tiangong.jpg')">

    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper"  align="center">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>欢迎使用天矶系统</h1>
              <h1>${pageContext.request.contextPath}</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="/menu">登录</a>
                <a class="reset_pass" href="#">忘记密码?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">没有账号?
                  <a href="#signup" class="to_register"> 立即创建</a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1>天矶后台管理系统</h1>
                  <p>©2016 All Rights Reserved. 宁波万流科技有限公司</p>
                  <audio controls="controls" loop autoplay="autoplay" >
                    <source src="${pageContext.request.contextPath}/mp3/myesp.mp3" type="audio/mp3">
                    <source src="${pageContext.request.contextPath}/mp3/myesp.mp3" type="audio/ogg">
                  </audio>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form method="get" action="/index">
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
