<%@ page language="java" import="java.util.*" %>  
<html>  
    <head>     
        <title>Form中文处理示例</title>  
    </head>   
    <body>  
    <%@ page pageEncoding = "gb2312" %> 
<%@ page contentType = " text/html;charset=gb2312 "   %> 

        <font size="2">  
                下面是表单内容：  
            <form action="TestMyJsp.jsp" method="post"> 
            <input type="hidden" name="action" value="post" /> 
                用户名：<input type="text" name="userName" size="10"/>  
                密  码：<input type="password" name="password" size="10"/>  
                <input type="submit" value="提交">  
            </form>    
        </font>  
               <font size="2"> 下面是表单提交以后用request取到的表单数据：<br>  
            <% 
             String action = request.getParameter("action");
            if (action != null && action.trim().equals("post")) {
                String str=new String( request.getParameter("userName").getBytes("ISO-8859-1"), "gb2312");    
				System.out.println(str);
                String password = request.getParameter("password");  
               // String a = new String(userName.getBytes("ISO-8859-1"), "gb2312");
               // System.out.println(a);
                // System.out.println(userName);
                //out.println("表单输入userName的值:" + new String(userName.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
                out.println("表单输入password的值:" + new String(password.getBytes("ISO-8859-1"), "gb2312")+ "<br>"); 
                } 
             %>   
        </font>  
        <% String str="汉子";
        out.println(str);
         %>
    </body>  
</html>  
