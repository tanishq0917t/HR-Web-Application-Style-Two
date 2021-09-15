package com.tanishq.hr.tags;
import javax.servlet.jsp.tagext.*;
public class IfTagHandler extends TagSupport
{
private boolean condition;
public IfTagHandler()
{
this.reset();
}
public void reset()
{
this.condition=false;
}
public void setCondition(boolean condition)
{
this.condition=condition;
}
public boolean getCondition()
{
return this.condition;
}
public int doStartTag()
{
if(condition==true) return super.EVAL_BODY_INCLUDE;
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}