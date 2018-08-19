<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dev-ops Project</title>
</head>
<body>

<div class="topnav">
  
  
  <h1>Dev-ops Project</h1>

</div>


<style>
.topnav {
    background-color: #333;
    overflow: hidden;
}

/* Style the links inside the navigation bar */

h1{
align: center;
}

.topnav h1 {
    
    color: #f2f2f2;
    text-align: center;
    padding: 1px 1px;
    text-decoration: none;
    font-size: 30px;
}

/* Change the color of links on hover */
/* .topnav h1:hover {
    background-color: #ddd;
    color: black;
} */

/* Add a color to the active/current link */
.topnav h1.active {
    background-color: #4CAF50;
    color: white;
}

.container{
align:center;
padding-top: 10%;
}


.card {
	padding: 5%;
	/* margin-top: 100px; */
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 300px;
    text-align: center;
    margin: 100px auto; 
    float: none;
    margin-bottom: 10px; 
}

#button {
    border: none;
    outline: 0;
    display: inline-block;
    padding: 8px;
    color: white;
    background-color: #000;
    text-align: center;
    cursor: pointer;
    width: 100%;
    font-size: 18px;
}

#txtbox1{
width:100%;
height: 30px;
}

#txtbox2{
width:100%;
height: 30px;
}

</style>
<div class="card">
	<div class="container">
			<form action="Calc" method="get">
				<!-- <label for="fname">First Number</label> -->
				<input type="text" name="num1" placeholder="Enter number" id="txtbox1" >
				<br><br><label> + </label><br><br>
				<!-- <label for="fname">Second Number</label> -->
				<input type="text" name="num2" placeholder="Enter number" id="txtbox2" >
				<br>
				<h1>${RESULT}</h1>
				<input type="submit" value="Result" id="button">
				
				
				
				
			</form>
	</div>
</div>
</body>
</html>