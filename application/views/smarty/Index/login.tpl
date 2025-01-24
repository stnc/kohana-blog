<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jquery简单的注册表单验证代码 - 站长素材</title>
    <script src="/public/index/js/jquery.min.js" type="text/javascript"></script>

    <link rel="stylesheet" href="/public/index/css/style.css">

</head>
<body>
<br>
<div class="form-div">
    <form id="reg-form" action="" method="post">

        <table>
            <tr>
                <td>用户名</td>
                <td><input name="uid" type="text" id="uid" easyform="length:4-16;char-normal;real-time;" message="用户名必须为4—16位的英文字母或数字" easytip="disappear:lost-focus;theme:blue;" ajax-message="用户名已存在!">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input name="psw1" type="password" id="psw1" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;theme:blue;"></td>
            </tr>
        </table>

        <div class="buttons">
            <input value="登 录" type="submit" style="margin-right:20px; margin-top:20px;">
            <a href="/auth/register"><input value="我没有账号，我要注册" type="button" style="margin-right:45px; margin-top:20px;"></a>
        </div>

        <br class="clear">
    </form>
</div>


<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>天行健，君子以自强不息 </p>
    <p>打架用砖糊</a></p>
</div>
</body>
</html>
