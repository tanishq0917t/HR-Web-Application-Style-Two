<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Backdoor>
<jsp:forward page='/LoginForm.jsp' />
</tr:Backdoor>
<tr:FormResubmitted>
<tr:Module name="HOME" />
<jsp:forward page='/notifyFormResubmission' />
</tr:FormResubmitted>
<tr:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.tanishq.hr.beans.DesignationBean' />
<jsp:setProperty name='designationBean' property='*' />
<jsp:forward page='/addDesignation' />
