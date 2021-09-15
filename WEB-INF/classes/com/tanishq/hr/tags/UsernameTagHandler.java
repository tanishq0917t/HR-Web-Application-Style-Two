package com.tanishq.hr.tags;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.io.*;
public class UsernameTagHandler extends TagSupport
{
public UsernameTagHandler()
{
this.reset();
}
private void reset()
{
//do nothing
}
public int doStartTag()
{
String username=(String)pageContext.getAttribute("username",PageContext.SESSION_SCOPE);
JspWriter jw=pageContext.getOut();
try
{
jw.print(username);
}catch(IOException ioe)
{
//do nothing
}
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}