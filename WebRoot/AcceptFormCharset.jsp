<%@ page language="java" import="java.util.*"  
    contentType="text/html;charset=gb2312"%>  
<html>  
    <head>  
        <title>Form��������</title>  
    </head>  
    <body>  
        <font size="2"> �����Ǳ��ύ�Ժ���requestȡ���ı����ݣ�<br>  
            <%  
                String userName = request.getParameter("userName");  
                String password = request.getParameter("password");  
                out.println("������userName��ֵ:" + new String(userName.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
                out.println("������password��ֵ:" + new String(password.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
             %>   
        </font>  
    </body>  
</html>  