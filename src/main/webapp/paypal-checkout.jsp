<%@page import = "java.text.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.greenmart.connection.*"%>
<%@page import = "com.greenmart.model.*"%>
<%@page import = "com.greenmart.dao.*"%>
<%@page language = "java" contentType="text/html; charset=ISO-8859-1" pageEncoding = "ISO-8859-1"%>
<%
	DecimalFormat df = new DecimalFormat("#.##");
	request.setAttribute("df", df);

	UserModel auth = (UserModel) request.getSession().getAttribute("auth");
	if (auth != null){
		request.setAttribute("auth", auth);
	}
	
	ArrayList<CartModel> cart_list = (ArrayList<CartModel>) session.getAttribute("cart-list");
	List<CartModel> cartProduct = null;
	
	double total = 0;
	
	if(cart_list != null){
		productDao pDao = new productDao(dbCon.getConnection());
		cartProduct = pDao.getCartProducts(cart_list);
		total = pDao.getTotalCartPrice(cart_list);
		request.setAttribute("cart_list", cart_list);
		request.setAttribute("total", total);
	}
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>PayPal Checkout</title>
	    
        <!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
	    
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
	    <style>
	        body {
	            font-family: Arial, sans-serif;
	            text-align: center;
	            margin: 50px;
	        }
	
	        h1 {
	            color: #007BFF;
	            margin-bottom: 20px;
	        }
	
	        #paypal-button-container {
	            margin-top: 20px;
	        }
	    </style>
	</head>
	<body>
	    <div class="container">
	        <h1>Proceed to PayPal Checkout</h1>
	        <div id="paypal-button-container"></div>
	    </div>
	
		<script src="https://www.paypal.com/sdk/js?client-id=ASV5SyLF0tXQu9Q-YqKU1PVsqoZap1nvVwhPHzIz3pXk6-2rn1ctUdZx35j1d12ZO2QG9CBhtATtnpZN"></script>
	    
	    <script>
			var totalCartPrice = <%= total %>;
		
	        paypal.Buttons({
	        	createOrder: function (data, actions) {
	        	    return actions.order.create({
	        	        purchase_units: [{
	        	            amount: {
	        	                value: totalCartPrice,
	        	                currency_code: 'USD'
	        	            }
	        	        }]
	        	    });
	        	},

	            onApprove: function (data, actions) {
	                return actions.order.capture().then(function (details) {
	                    window.location.href = "PayPalCheckoutServlet";
	                });
	            }
	        }).render('#paypal-button-container');
    	</script>
	
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
	</body>
</html>
