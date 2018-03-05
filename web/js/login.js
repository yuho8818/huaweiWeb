/**
 * 
 */

function login(){
	document.getElementById("userlogin").style.display="";
	var mybg = document.createElement("div"); 
	mybg.setAttribute("id","mybg"); 
	mybg.setAttribute("class","hide");
	document.body.appendChild(mybg); 
	document.body.style.overflow = "hidden";
}
function exit1(){
	document.getElementById("userlogin").style.display="none";
	document.body.removeChild(document.getElementById("mybg"));
}