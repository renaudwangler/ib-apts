function switchDiv(divId,titre) {
  div=document.getElementById(divId);
  if (div.style.display=='none') {
    titre.className='plus';
    div.style.display='block'}
  else {
    div.style.display='none'
    titre.className='moins';}}

function indexLoad() {
  if (localStorage.getItem('ibAPTSlastcourseView') !== undefined) {
    document.getElementById(localStorage.getItem('ibAPTSlastcourseView')).className='lastCourse';}}

function stageLoad(pageName) {
  localStorage.setItem('ibAPTSlastcourseView',pageName);
}