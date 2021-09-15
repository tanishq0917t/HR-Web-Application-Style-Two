<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Module name="DESIGNATION" />
<jsp:useBean id='designationBean' scope='request' class='com.tanishq.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.tanishq.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styleTwo/js/DesignationAddForm.js'></script>
<h1>Designation Add Module</h1>
<span class='error'>
<jsp:getProperty name='errorBean' property='error' />
</span>
<form method='POST' action='/styleTwo/AddDesignation.jsp' onsubmit='return validate(this)'>
<tr:FormID />
Designation
<input type='text' id='title' name='title' maxLength='35' size='36' value='${designationBean.title}'>
<span id='titleErrorSection' class='error'></span><br>
<button type='submit'>Add</button>&nbsp;&nbsp;
<button type='button' onclick='cancelAddition()'>Cancel</button>
</form>
<form id='cancelAdditionForm' action='/styleTwo/Designations.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />
