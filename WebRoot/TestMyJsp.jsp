<%@ page language="java" import="java.util.*" %>  
<html>  
    <head>     
        <title>Form���Ĵ���ʾ��</title>  
    </head>   
    <body>  
    <%@ page pageEncoding = "gb2312" %> 
<%@ page contentType = " text/html;charset=gb2312 "   %> 

        <font size="2">  
                �����Ǳ����ݣ�  
            <form action="TestMyJsp.jsp" method="post"> 
            <input type="hidden" name="action" value="post" /> 
                �û�����<input type="text" name="userName" size="10"/>  
                ��  �룺<input type="password" name="password" size="10"/>  
                <input type="submit" value="�ύ">  
            </form>    
        </font>  
               <font size="2"> �����Ǳ��ύ�Ժ���requestȡ���ı����ݣ�<br>  
            <% 
             String action = request.getParameter("action");
            if (action != null && action.trim().equals("post")) {
                String str=new String( request.getParameter("userName").getBytes("ISO-8859-1"), "gb2312");    
				System.out.println(str);
                String password = request.getParameter("password");  
               // String a = new String(userName.getBytes("ISO-8859-1"), "gb2312");
               // System.out.println(a);
                // System.out.println(userName);
                //out.println("������userName��ֵ:" + new String(userName.getBytes("ISO-8859-1"), "gb2312")+ "<br>");  
                out.println("������password��ֵ:" + new String(password.getBytes("ISO-8859-1"), "gb2312")+ "<br>"); 
                } 
             %>   
        </font>  
        <% String str="����";
        out.println(str);
         %>
    </body>  
</html>  
