<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<jsp:useBean id='messageBean' scope='request' class='com.tanishq.hr.beans.MessageBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<h2>${messageBean.heading}</h2>
${messageBean.message}
<tr:If condition='${messageBean.generateButtons}'>
<table>
<tr>
<td>
<form action='/styleTwo/${messageBean.buttonOneAction}'>
<button>${messageBean.buttonOneText}</button>
</form>
</td>
<tr:If condition='${messageBean.generateTwoButtons}'>
<td>
<form action='/styleTwo/${messageBean.buttonTwoAction}'>
<button>${messageBean.buttonTwoText}</button>
</form>
</td>
</tr:If>
</tr>
</table>
</tr:If>
<jsp:include page='/MasterPageBottomSection.jsp' />
