<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>curosr_test</title>
</head>
<script type="text/javascript">
let mo;

HTMLElement.prototype.closestOne  = function(_selector) {
	  let start = this;
	  while (parent) {
	    // isMatch and isEqual?
	    const cond1 = start.parentElement ? start.parentElement.querySelector(_selector) : null;
	    const cond2 = start.matches(_selector);
	    if (cond1 && cond2) return start;
	    else if (!start.parentElement) return null;
	    start = start.parentElement;
	  }
	  return null;
	};
	
	cursor_find = function(){
		if(window.event.keyCode == 9){
		ele = document.querySelector('input');
		console.log(ele.closestOne('td'));

		console.log(ele.closestOne('tr'));
		console.log(ele.closestOne('tr').indexOf(document.querySelector('td'), 4));
		}
	}

cursor_next = function(){
	let info=this;
	let parent= this.parentElement;
	if(window.event.keyCode == 9){
		alert("Sdsd");
		console.log("info:"+info);
		console.log("parent:"+parent);
	}
	
}

</script>
<body>
<table>
<%
	for(int i =0; i<30; i++){
%>
<tr>
	<td><input type="text"></td>
	<td><input type="text"></td>
	<td><input type="text"></td>
	<td><input type="text"  onkeydown="cursor_find()"></td>
</tr>
<%
	}
%>
</table>
</body>
</html>