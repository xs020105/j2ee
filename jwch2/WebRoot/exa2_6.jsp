<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<P> 请输入一个数:
<BR>
 <!-- 以下是HTML表单，向服务器提交这个数 -->
  <FORM action="exa2_6.jsp" method=post name=form>
       <P>这个数是:
       <INPUT type="text" name="a">
        <BR> 
       <INPUT TYPE="submit" value="送出" name=submit>
  </FORM>  
 <%--获取客户提交的数据--%>
  <% String string_a=request.getParameter("a");
     double a=0;
  %>
 <%--判断字符串是否是空对象,如果是空对象就初始化--%>
      <% if(string_a==null)
           {string_a="0";
           } 
      %>
  <%--求这个数的平方--%>
       <% try{ a=Double.valueOf(string_a).doubleValue();
               a=a*a;                    //平方@@@@@@@@@@
               out.print("<BR>"+"平方为："+a); 
              }
            catch(NumberFormatException e)
             {out.print("<BR>"+"请输入数字字符");
             }
     %> 
</BODY>
</HTML> 