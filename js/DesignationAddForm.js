function validate(frm)
{
var title=frm.title.value.trim();
var titleErrorSection=document.getElementById('titleErrorSection');
titleErrorSection.innerHTML='';
if(title.length==0)
{
titleErrorSection.innerHTML='required';
frm.title.focus();
return false;
}
return true;
}
function cancelAddition()
{
document.getElementById('cancelAdditionForm').submit();
}
