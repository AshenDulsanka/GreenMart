<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Complete Your Purchase</title>
		
		<!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
		
		<style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
			*{
				margin:0;
				padding:0;
                font-family: 'Poppins', sans-serif;
			}
			body{
				display:flex;
				min-height:100vh;
				align-items:center;
				justify-content:center;
				background: linear-gradient(120deg,#2980b9,#8e44ad);
			}
			.box{
				height:380px;
				width:400px;
				background: white;
				padding:20px;
                border-radius: 30px;
                padding-bottom: 30px;
			}
			.box div{
				color: black;
				font-size:30px;
				font-weight:800;
				text-align:center;
				padding:20px 0;
			}
			.btn{
				border-radius:30px;
				color:#fff;
				margin-top:18px;
				padding:10px;
				background: linear-gradient(120deg,#2980b9,#8e44ad);
				font-size:18px;
				border:none;
				cursor:pointer;
			}
		</style>
	</head>
	
	<body>
		<div class="box">
			<div>
				<h1 style = "text-transform: uppercase;">Success!</h1><br>
				<h5>The payment has been made and the order has been successfully placed. <br> Happy Shopping!</h5>
				<button type="button" class="btn"><a href="index.html" style = 'color: white; text-decoration: none;'>Home</a></button>
			</div>
		</div>
	</body>
</html>
