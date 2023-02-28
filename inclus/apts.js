function switchDiv(divId,titre) {
  div=document.getElementById(divId);
  if (div.style.display=='none') {
    titre.className='plus';
    div.style.display='block'}
  else {
    div.style.display='none'
    titre.className='moins';}}
    
//Variable locale pour mettre en avant le dernier stage consulté
localStorage.setItem('ibAPTSlastcourseView',pageName);
