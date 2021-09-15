<%@taglib uri='WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Module name='DESIGNATION' />
<jsp:include page='/MasterPageTopSection.jsp' />
<h1>Designations</h1>
<table border='1'>
<thead>
<tr>
<th colspan='4' style='text-align:right;padding:5px'>
<a href='/styleTwo/DesignationAddForm.jsp'>Add New Designation</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center'>S.No.</th>
<th style='width:200px;text-align:center'>Designation</th>
<th style='width:80px;text-align:center'>Edit</th>
<th style='width:80px;text-align:center'>Delete</th>
</tr>
</thead>
<tbody>
<tr:EntityList name="designationBean" populatorClass="com.tanishq.hr.bl.DesignationBL" populatorMethod="getAll">
<tr>
<td style='text-align:right'>${serialNumber}...</td>
<td style='text-align:center'>${designationBean.title}</td>
<td style='text-align:center'><a href='/styleTwo/editDesignation?code=${designationBean.code}'>Edit</a></td>
<td style='text-align:center'><a href='/styleTwo/confirmDeleteDesignation?code=${designationBean.code}'>Delete</a></td>
</tr>
</tr:EntityList>
</tbody>
</table>
<jsp:include page='/MasterPageBottomSection.jsp' />
