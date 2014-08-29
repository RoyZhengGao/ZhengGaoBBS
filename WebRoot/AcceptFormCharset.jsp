<%@ page language="java" import="java.util.*"  
    contentType="text/html;charset=gb2312"%>  
<html>  
    <head>  
        <title>Form中文乱码</title>  
    </head>  
    <body>  
        <font size="2"> 下面是表单提交以后用request取到的表单数据：<br>  
            <%  
                String userName = request.getParameter("userName");  
                String password = request.getParameter("password");  
                out.println("表单输入userName的值:" + new String(userName.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
                out.println("表单输入password的值:" + new String(password.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
             %>   
        </font>  
    </body>  
</html>  