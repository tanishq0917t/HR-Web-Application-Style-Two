<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Module name="DESIGNATION" />
<jsp:useBean id='designationBean' scope='request' class='com.tanishq.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.tanishq.hr.beans.ErrorBean' />
<script src='/styleTwo/js/DesignationDeleteForm.js'></script>
<jsp:include page='/MasterPageTopSection.jsp' />
<h1>Designation Delete Module</h1>
<span class='error'>
<jsp:getProperty name='errorBean' property='error' />
</span>
<form method='POST' action='/styleTwo/DeleteDesignation.jsp' onsubmit='return validate(this)'>
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<tr:FormID />
Delete Designation: <b>${designationBean.title}<b>?<br>
<span id='titleErrorSection' class='error'></span><br>
<button type='submit'>Delete</button>&nbsp;&nbsp;
<button type='button' onclick='cancelDeletion()'>Cancel</button>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />
<form id='cancelDeletionForm' action='/styleTwo/Designations.jsp'>
</form>
</body>
</html>
