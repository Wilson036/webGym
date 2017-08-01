<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="mb" class="login.model.MemberBean" scope="session"/>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SignUp Template</title>
    <link href='css/jquery.qtip.min.css' rel='stylesheet' />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
    #inputEmail,
    #inputPassword {
        margin-top: 3px;
        margin-bottom: 3px;
    }

    .checkbox {
        float: left;
    }

    form {
        width: 50%;
        margin: auto;
    }

    #header {
        width: 50%;
        margin: auto;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    </style>
    
</head>

<body>
    <div class="container">
        <h3 id="header">會員註冊</h3>
        <form class="form-horizontal" action="/WebGym/SignUpServlet.do" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="inputid"  class="col-sm-2 control-label">帳號</label>
                <div class="col-sm-10">
                    <input type="text" name="memberid" value="${param.memberid}" class="form-control" id="inputid" placeholder="ID">
                </div>
                <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.id}</div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-2 control-label">密碼</label>
                <div class="col-sm-10">
                    <input type="password" name="m_password" value="${param.m_password}" class="form-control" id="inputPassword" placeholder="Password">
                </div>
                <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.password}</div>
            </div>
            <div class="form-group">
                <label for="inputname" class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10">
                    <input type="text" name="m_name" value="${param.m_password}" class="form-control" id="inputname" placeholder="Name">
                    <span style="color:red; font-size:60%; display:inline"> ${ErrorMsg.name}</span>
                </div>
            </div>
            <div class="form-group">
                <label for="inputname" class="col-sm-2 control-label">身分證字號</label>
                <div class="col-sm-10">
                    <input type="text" name="m_id_number" value="${param.m_id_number}" class="form-control" id="inputidnumber" placeholder="A123456789">
                </div>
                <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.idNumber}</div>
            </div>
            <div class="form-group">
                <label for="inputname" class="col-sm-2 control-label">出生日期</label>
                <div class="col-sm-10">
                    <input type="text" name="m_bday" value="${param.m_bday}" class="form-control" id="inputdata" placeholder="YYYY-MM-dd">
                </div>
                <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.date}</div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">                                         
                    <div class="checkbox"> 
                                                                性別                               
                         <label>                                 
                            <input name="m_gender" type="radio" value="male" checked> 男
                        </label>
                        <label>
                            <input name="m_gender" type="radio" value="female" > 女
                        </label>
                    </div>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputEmail" class="col-sm-2 control-label">電子信箱</label>
                <div class="col-sm-10">
                    <input type="text" name="m_mail" value="${param.m_mail}" class="form-control" id="inputEmail" placeholder="ABC@gmail.com">
                </div>
                <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.email}</div>
            </div>
            <div class="form-group">
                <label for="inputAddr" class="col-sm-2 control-label">住址</label>
                <div class="col-sm-10">
                    <input type="text"  name="m_address" value="${param.m_address}" class="form-control" id="inputAddr" >
                </div>
                  <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.address}</div>
            </div>
            <div class="form-group">
                <label for="inputNumber" class="col-sm-2 control-label">電話</label>
                <div class="col-sm-10">
                    <input type="text" name="m_tel" class="form-control" id="inputNumber" >
                </div>
            </div>
            <div class="form-group">
                <label for="inputMobile" class="col-sm-2 control-label">手機號碼</label>
                <div class="col-sm-10">
                    <input type="text" name="m_mobile" value="${param.m_mobile}" class="form-control" id="inputMobile" >
                </div>
                 <div style="color:red; font-size:60%; display:inline"> ${ErrorMsg.phone}</div>
            </div>
            <input type="file" id="file1" name="m_photo" multiple accept="image/*"  ><br>
            <div id="dropZone"></div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Sign up</button>
                </div>
            </div>
            <input type="hidden"  name="is_blicklist" value="0" >
            <input type="hidden"  name="m_register" >
            <input type="hidden"  name="m_identity"  value="member" >
            <li>${ErrorMsg.exception}</li>
        </form>
    </div>
    <!-- /container -->
    <script src='js/jquery.min.js'></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>