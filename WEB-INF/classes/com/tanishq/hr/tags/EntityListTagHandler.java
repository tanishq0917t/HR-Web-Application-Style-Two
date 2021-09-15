package com.tanishq.hr.tags;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.lang.reflect.*;
public class EntityListTagHandler extends BodyTagSupport
{
private List list;
private int index;
private String populatorClass;
private String populatorMethod;
private String name;
public EntityListTagHandler()
{
reset();
}
public void setPopulatorClass(String populatorClass)
{
this.populatorClass=populatorClass;
}
public String getPopulatorClass()
{
return this.populatorClass;
}
public void setPopulatorMethod(String populatorMethod)
{
this.populatorMethod=populatorMethod;
}
public String getPopulatorMethod()
{
return this.populatorMethod;
}
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
private void reset()
{
this.index=0;
this.list=null;
this.populatorClass=null;
this.populatorMethod=null;
this.name=name;
}
public int doStartTag()
{
System.out.println("Got called");
try
{
if(name==null || name.trim().length()==0) return super.SKIP_BODY;
Class cls=Class.forName(populatorClass);
Object obj=cls.newInstance();
Class parameters[]=new Class[0];
Method method=cls.getMethod(populatorMethod,parameters);
list=(List)method.invoke(obj);
if(list==null) return super.SKIP_BODY;
if(list.size()==0) return super.SKIP_BODY;
Object bean=list.get(index);
pageContext.setAttribute(name,bean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",new Integer(index+1),PageContext.REQUEST_SCOPE);
index++;
return super.EVAL_BODY_INCLUDE;
}catch(Throwable t)
{
System.out.println(t.getMessage());
return super.SKIP_BODY;
}
}
public int doAfterBody()
{
System.out.println("Got got called");
if(index==list.size()) return super.SKIP_BODY;
Object bean=list.get(index);
pageContext.setAttribute(name,bean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",index+1,PageContext.REQUEST_SCOPE);
index++;
return super.EVAL_BODY_AGAIN;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}