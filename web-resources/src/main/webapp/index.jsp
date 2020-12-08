<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- jquery 核心 JavaScript 文件 -->
    <script src="static/js/jquery-3.5.1.min.js" ></script>
    <!-- Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" >
    <!-- Bootstrap 核心 JavaScript 文件 -->
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <style type="text/css">
        html,body{
            margin: 0;
            padding: 0;
            height: 100%;
        }
        .container-fluid{
            background: pink;
        }
        /*div[class|=col]{*/
        /*    border: 1px solid;*/
        /*}*/
        a:hover{
            text-decoration: none;
        }
        .head-right{
            padding-top: 40px;
            float: right;
        }
        .body-left{
            padding-top: 20px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <div class="row">
                <div class="col-lg-12">
                    <div>
                        <div class="page-header">
                            <h1>XX管理系统<small></small></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="row">
                <div class="col-lg-12">
                    <div class="head-right">
                        <h4><a href=""><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a>
                            <a href=""><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Star</a>
                            <a href=""><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 注销</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-2">
            <div class="body-left">

                <div class="row">
                    <div class="col-lg-12">
                        <div>
                            <ul class="nav nav-pills nav-stacked">
                                <li role="presentation" class="active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        Home <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>
                                <li role="presentation" class="active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        House <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>
                                <li role="presentation" class="active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        Power <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>
                                <li role="presentation" class="active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        Dropdown <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-10">
            <!-- 16:9 aspect ratio -->
            <div class="embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src="test1.jsp"></iframe>
            </div>
        </div>
    </div>

</div>

</body>
</html>
