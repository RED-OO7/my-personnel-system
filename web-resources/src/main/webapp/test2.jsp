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

        div[class|=row]{
            padding-top: 30px;
        }
        /*div[class|=col]{*/
        /*    border: 1px solid;*/
        /*}*/

    </style>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-5">
        </div>
        <div class="col-lg-7">
            <div>
                <h2>员工信息</h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-1">

        </div>
        <div class="col-lg-10">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="name" class="col-sm-1">*姓名:</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="name">
                    </div>
                    <label for="nation" class="col-sm-1">*民族:</label>
                    <div class="col-sm-1">
                        <input type="text" class="form-control" id="nation">
                    </div>
                    <div class="col-sm-2">
                        <label for="sex">*性别:
                            <input type="checkbox">男
                            <input type="checkbox">女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="idcard" class="col-sm-1">*身份证件:</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="idcard">
                    </div>

                    <label for="birthdate" class="col-sm-1">*出生日期:</label>
                    <div class="col-sm-3">
                        <input type="date" class="form-control" id="birthdate">
                    </div>
                </div>
                <div class="form-group">

                    <label for="phone" class="col-sm-1">*手机号码:</label>
                    <div class="col-sm-3">
                        <input type="email" class="form-control" id="phone">
                    </div>

                    <label for="email" class="col-sm-1">*电子邮件:</label>
                    <div class="col-sm-3">
                        <input type="email" class="form-control" id="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="number" class="col-sm-1">*员工编号:</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" id="number">
                    </div>

                    <label for="position" class="col-sm-1">*职位:</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" id="position">
                    </div>

                    <label for="department" class="col-sm-1">*所属部门:</label>
                    <div class="col-sm-2">
                        <select  id="department"  name="department" class="form-control">
                            <option value="1">xx部门</option>
                            <option value="2">yy部门</option>
                            <option value="3">aa部门</option>
                            <option value="4">bb部门</option>
                            <option value="5">dd部门</option>
                        </select>
                    </div>
                    <label for="workbtime" class="col-sm-1">*上岗日期:</label>
                    <div class="col-sm-2">
                        <input type="date" class="form-control" id="workbtime">
                    </div>
                </div>

                <div class="form-group">

                    <label for="politics" class="col-sm-1">*政治面貌:</label>
                    <div class="col-sm-2">
                        <select  id="politics"  name="politics" class="form-control">
                            <option value="1">群众</option>
                            <option value="2">共青团</option>
                            <option value="3">党员</option>
                        </select>
                    </div>

                    <label for="marriage" class="col-sm-1">*婚姻状况:</label>
                    <div class="col-sm-2">
                        <select  id="marriage"  name="marriage" class="form-control">
                            <option value="1">未婚</option>
                            <option value="2">已婚</option>
                        </select>
                    </div>

                    <label for="relation" class="col-sm-2">*其他联系方式:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="relation">
                    </div>

                </div>
                <div class="form-group">
                    <label for="Rrelationer" class="col-sm-2">*紧急联系人:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="Rrelationer">
                    </div>

                    <label for="Rphone" class="col-sm-2">*紧急联系电话:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="Rphone">
                    </div>
                </div>

                <div class="form-group">
                    <label for="cultuer" class="col-sm-1">*文化程度:</label>
                    <div class="col-sm-2">
                        <select  id="cultuer"  name="cultuer" class="form-control">
                            <option value="1">小学</option>
                            <option value="2">初中</option>
                            <option value="3">高中</option>
                            <option value="4">大专</option>
                            <option value="5">本科</option>
                        </select>
                    </div>

                    <label for="address" class="col-sm-1">*户籍地址:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="address">
                    </div>
                </div>

                <div class="form-group">
                    <label for="school" class="col-sm-1">*毕业学校:</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="school">
                    </div>

                    <label for="graduatetime" class="col-sm-1">*毕业时间:</label>
                    <div class="col-sm-3">
                        <input type="date" class="form-control" id="graduatetime">
                    </div>
                    <label for="profession" class="col-sm-1">*所学专业:</label>
                        <div class="col-sm-3">
                        <input type="text" class="form-control" id="profession">
                    </div>
                </div>

                <div class="form-group">
                    <label >备注：</label>
                    <textarea class="form-control" rows="5"></textarea>
                </div>
                <div class="center-block">
                    <div class="col-sm-offset-5 col-sm-7">
                        <button type="button" class="btn btn-warning">取消</button>
                        <button type="button" class="btn btn-success">确定</button>
                    </div>
                </div>

            </form>
        </div>
        <div class="col-lg-1">

        </div>
    </div>
</div>
</body>
</html>
