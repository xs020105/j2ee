package bit.jw;

import java.io.*;

public class Function
{
	public static String trans(String chi)
    {
		String result = null;
        byte temp [];
        try
         {
              temp=chi.getBytes("iso-8859-1");
                      result = new String(temp);
          }
          catch(UnsupportedEncodingException e)
          {
                 System.out.println (e.toString());
          }
		return result;
	}
	public static int add(int x,int y)
	{
		return x+y;
	}
}	