
var a = Array.from(new Array(10),(val,index)=>index).map(el => el = el +1)

const buttonContainer = document.createElement('ul');

a.forEach(el => {
	const button = document.createElement('button');
  button.innerText = el;
  button.addEventListener('click',function(e){
  alert(`${el}`);
  });
  buttonContainer.appendChild(button);
});

var body = document.getElementById('body');
body.appendChild(buttonContainer);
// function alert(e){
// 	console.log(e);
// 	alert (`${e}`);
// }
