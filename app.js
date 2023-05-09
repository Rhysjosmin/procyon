
function login(){
var name = document.getElementById('name').value;
var password = document.getElementById('pass').value;
var SelectionFromReg = document.getElementById('SelectionFromReg').value;

if(SelectionFromReg=='department-event'){
    Sel='Department'
}else if(SelectionFromReg=='class-event'){
    Sel='Class'

}


SERVER_URL='http://127.0.0.1:5000'
fetch(SERVER_URL+'/login/' + name + '/' + password+ '/' + Sel)
  .then(response => response.json())
  .then(data => {
    if(data.Response=='OK'){
        window.location=data.Link
    }
  });}