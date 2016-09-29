<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY><FONT size=4>
   <%!
      long continueSum(int n)
          { int sum=0;
             for(int i=1;i<=n;i++)
              { sum=sum+i;
              }
            return sum;
          }
   %>
<P>1到100的连续和:<BR>
   <% long sum;
      sum=continueSum(100);
      out.print(""+sum);
   %>
</BODY>
</HTML>