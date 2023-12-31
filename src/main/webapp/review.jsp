<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Review</title>
		<style type="text/css">
		    table { border: 0; }
		    table td { padding: 5px; }
		</style>
		
        <!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
	</head>
	<body>
		<div align="center">
		    <h1>Please Review Before Paying</h1>
		    <form action="execute_payment" method="post">
			    <table>
			        <tr>
			            <td colspan="2"><b>Transaction Details:</b></td>
			            <td>
			                <input type="hidden" name="paymentId" value="${param.paymentId}" />
			                <input type="hidden" name="PayerID" value="${param.PayerID}" />
			            </td>
			        </tr>
			        <tr>
			            <td>Description:</td>
			            <td>${transaction.description}</td>
			        </tr>
			        <tr>
			            <td>Subtotal:</td>
			            <td>${transaction.amount.details.subtotal} USD</td>
			        </tr>
			        <tr><td><br/></td></tr>
			        <tr>
			            <td colspan="2"><b>Payer Information:</b></td>
			        </tr>
			        <tr>
			            <td>Name:</td>
			            <td>${payer.firstName}</td>
			        </tr>
			        <tr>
			        <tr>
			            <td>Email:</td>
			            <td>${payer.email}</td>
			        </tr>
			        <tr><td><br/></td></tr>
			        <tr>
			            <td colspan="2"><b>Shipping Address:</b></td>
			        </tr>
			        <tr>
			            <td>Recipient Name:</td>
			            <td>${shippingAddress.recipientName}</td>
			        </tr>
			        <tr>
			            <td>Line 1:</td>
			            <td>${shippingAddress.line1}</td>
			        </tr>
			        <tr>
			            <td colspan="2" align="center">
			                <input type="submit" value="Pay Now" />
			            </td>
			        </tr>    
			    </table>
		    </form>
		</div>
	</body>
</html>