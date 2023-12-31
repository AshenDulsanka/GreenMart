<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Out</title>
    <style type="text/css">
        table { border: 0; }
        table td { padding: 20px; }
    </style>
    			
	<!--Favicon-->
	<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
</head>
<body>
<div align="center">
    <h1>Check Out</h1>
    <br/>
    <form action="authorize_payment" method="post">
    <table>
        <tr>
            <td>Product/Service:</td>
            <td><input type="text" name="product" value="Next iPhone" /></td>
        </tr>
        <tr>
            <td>Sub Total:</td>
            <td><input type="text" name="subtotal" value="100" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Checkout" />
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>