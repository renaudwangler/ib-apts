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

function addCopyButton() {
document.querySelectorAll("code").forEach((codeBlock) => {
  // only add button if browser supports Clipboard API
  if (navigator.clipboard) {
    let copyButton = document.createElement("button");
    copyButton.innerText = 'copier';
    codeBlock.appendChild(copyButton);
    copyButton.addEventListener("click", async () => {
      await copyCode(codeBlock.innerText);});}
});
}
async function copyCode(code2copy) {
  await navigator.clipboard.writeText(code2copy);
}