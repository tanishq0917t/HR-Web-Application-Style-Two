package com.tanishq.hr.tags;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.io.*;
public class BackdoorTagHandler extends TagSupport
{
public BackdoorTagHandler()
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
if(username==null)
{
return super.EVAL_BODY_INCLUDE;
}
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}
