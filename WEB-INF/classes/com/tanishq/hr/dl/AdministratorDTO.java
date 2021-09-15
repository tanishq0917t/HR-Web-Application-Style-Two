package com.tanishq.hr.dl;
public class AdministratorDTO implements java.io.Serializable
{
private String username;
private String password;
public AdministratorDTO()
{
this.username=null;
this.password=null;
}
public void setUsername(java.lang.String username)
{
this.username=username;
}
public java.lang.String getUsername()
{
return this.username;
}
public void setPassword(java.lang.String password)
{
this.password=password;
}
public java.lang.String getPassword()
{
return this.password;
}
}