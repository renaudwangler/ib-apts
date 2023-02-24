function links() {
  let courseTable=document.getElementsByTagName('table')[0];
  Object.entries(courses).forEach(([courseId,courseTitle]) => {
    let newCourse=courseTable.insertRow(0);
    newCourse.id=courseId;
    newCourse.onclick=function(){window.location=(courseId+'.html')};
    let cell1=newCourse.insertCell(0);
    let cell2=newCourse.insertCell(1);
    cell1.innerHTML=courseId;
    cell2.innerHTML=courseTitle;
    if (localStorage.getItem('ibAPTSlastcourseView') !== undefined && localStorage.getItem('ibAPTSlastcourseView') == courseId) {
      cell1.className='lastCourse';
      cell2.className='lastCourse';
    }
  
  });}

function switchDiv(divId,titre) {
  div=document.getElementById(divId);
  if (div.style.display=='none') {
    titre.className='plus';
    div.style.display='block'}
  else {
    div.style.display='none'
    titre.className='moins';}}
