<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><spring:message code="home.index.title"></spring:message></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/static/css/index.login.css" />">
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/static/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/static/css/form-elements.css" />">
    <link rel="stylesheet" href="<c:url value="/static/css/index.css" />">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg" style="height: 2000px">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><spring:message code="home.index.logo"></spring:message></h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3><spring:message code="home.index.description"></spring:message></h3>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form"
                              action="<c:url value="/"/>"
                              method="post" class="login-form">
                            <label style="color: red">${msg}</label>
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="userName"
                                       placeholder="<spring:message code="home.index.username"></spring:message> "
                                       class="form-username form-control input-error" id="form-username"
                                       value="${userName}"/>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="password"
                                       placeholder="<spring:message code="home.index.password"></spring:message>"
                                       class="form-password form-control input-error" id="form-password"
                                       value="${password}"/>
                            </div>
                            <button type="submit" class="btn"><spring:message code="home.index.title"></spring:message></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <div class="social-login-buttons">

                        <a class="btn btn-link-1  btn btn-primary" data-toggle="modal"
                           data-target=".bs-example-modal-sm"
                           href="#">
                            <i class="fa"></i> <spring:message code="language.select"></spring:message>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="youModel" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog"
     aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content" style="height: 100px; width: 500px;">
            <br/>
            <a href="?locale=zh_CN" style="color: #2b74d4;font-weight: bold;">中文</a><br>
            <a href="?locale=en_US" style="color: #2b74d4;font-weight: bold;">English</a>
        </div>
    </div>
</div>

<!-- Javascript -->
<script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/static/js/jquery.backstretch.min.js" />"></script>
<script src="<c:url value="/static/js/scripts.js" />"></script>

<div class="backstretch"
     style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 800px; width: 1519px; z-index: -999999; position: fixed;">
    <img src="<c:url value="/static/images/1.jpg" />"
         style="position: absolute; margin: 0px; padding: 0px; border: none; width: 1519px; height: 1000px; max-height: none; max-width: none; z-index: -999999; left: 0px; top: -151.333px;">
</div>
<audio controls="controls" style="display: none;"></audio>
</body>
</html>