<jsp:useBean id='administratorBean' scope='request' class='com.tanishq.hr.beans.AdministratorBean' />
<jsp:setProperty name='administratorBean' property='*' />
<jsp:forward page='/login' />
