package com.tanishq.hr.dl;
import com.tanishq.hr.dl.*;
import java.sql.*;
public class AdministratorDAO implements java.io.Serializable
{
public AdministratorDTO getByUsername(String username) throws DAOException
{
try
{
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement=connection.prepareStatement("select * from administrator where uname=?");
preparedStatement.setString(1,username);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==false)
{
preparedStatement.close();
connection.close();
resultSet.close();
throw new DAOException("Administrator account "+username+"does not exists");
}
AdministratorDTO administratorDTO=new AdministratorDTO();
administratorDTO.setPassword(resultSet.getString("pwd"));
administratorDTO.setUsername(resultSet.getString("uname").trim());
preparedStatement.close();
resultSet.close();
connection.close();
return administratorDTO;
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());
}
}
}
