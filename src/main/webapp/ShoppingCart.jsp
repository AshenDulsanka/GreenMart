<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Shopping Cart</title>
		<meta charset="ISO-8859-1">
		<link rel ="stylesheet" type="text/css" href="css/ShoppingCart.css">
		
		<!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
	</head>

    <body>
        <div class="container">
            <h1> Shopping Cart</h1>

            <div class="cart">
                <div class="products">
                    <div class="product">
                        <img src="https://i.imgur.com/oYbYgGQ.jpg">
                        <div class="product-info">
                            <h3 class="product-name"> 
                                Chakki Fresh Atta
                            </h3>

                            <h4 class="product-price">
                                Rs. 350
                            </h4>

                            <h4 class="product-offer">
                                50%
                            </h4>

                            <p class="product-quantity"> 
                                Qty: 
                                <input value="1" name="">
                            </p>

                            <p class="product-remove">
                                <i class="fas fa-trash-alt"></i>
                                <span class="remove">
                                    Remove
                                </span>
                            </p>
                        </div>
                    </div>

                    <div class="product">
                        <img src="https://i.imgur.com/mHmTIxp.jpg">
                        <div class="product-info">
                            <h3 class="product-name">  
                                Maggie
                            </h3>

                            <h4 class="product-price"> 
                                Rs. 10
                            </h4>

                            <h4 class="product-offer">
                                20%
                            </h4>

                            <p class="product-quantity">
                                Qnt: 
                                <input value="1" name="">
                            
                            </p>
                            <p class="product-remove">
                                <i class="fas fa-trash-alt"></i>
                                <span class="remove">
                                    Remove
                                </span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="cart-total">
                    <p>
                        <span>
                            Total Price
                        </span>

                        <span>
                            Rs. 183
                        </span>
                    </p>

                    <p>
                        <span>
                            No. of Items
                        </span>

                        <span>
                            2
                        </span>
                    </p>

                    <p>
                        <span>
                            You Save
                        </span>

                        <span>
                            Rs. 177
                        </span>
                    </p>

                    <a href="Details For Checkout HTML.html"> 
                        Proceed to Checkout
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>