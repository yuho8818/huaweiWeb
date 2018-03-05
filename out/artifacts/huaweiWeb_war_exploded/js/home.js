/**
 * 
 */

function login(){
    	document.getElementById("user").style.display="";
    	document.getElementById("search").style.opacity="0.5";
    	var mybg = document.createElement("div"); 
    	mybg.setAttribute("id","mybg"); 
    	mybg.setAttribute("class","hide")
//    	mybg.style.background = "#000"; 
//    	mybg.style.width = "100%"; 
//    	mybg.style.height = "100%"; 
//    	mybg.style.position = "absolute"; 
//    	mybg.style.top = "0"; 
//    	mybg.style.left = "0"; 
//    	mybg.style.zIndex = "500"; 
//    	mybg.style.opacity = "0.3"; 
//    	mybg.style.filter = "Alpha(opacity=30)"; 
    	document.body.appendChild(mybg); 
    	document.body.style.overflow = "hidden";
    	
    }
    
    function exit1(){
    	document.getElementById("user").style.display="none";
    	document.getElementById("search").style.opacity="1";
    	document.body.removeChild(document.getElementById("mybg"));
    }
    
    