<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Module name="DESIGNATION" />
<jsp:useBean id='designationBean' scope='request' class='com.tanishq.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.tanishq.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<h1>Designation Update Module</h1>
<span class='error'>
<jsp:getProperty name='errorBean' property='error' />
</span>
<form method='POST' action='/styleTwo/UpdateDesignation.jsp' onsubmit='return validate(this)'>
<tr:FormID />
Designation
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<input type='text' id='title' name='title' maxLength='35' size='36' value='${designationBean.title}'>
<span id='titleErrorSection' class='error'></span><br>
<button type='submit'>Update</button>&nbsp;&nbsp;
<button type='button' onclick='cancelEdition()'>Cancel</button>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />
