<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
if (session.getAttribute("name") == null){
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>GreenMart</title>

        <!--Stylesheet-->
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

        <!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />

        <script src = 'js/index.js' defer></script>
    </head>

    <body>
        <!--nav-->
        <nav class="navigation">

            <!--logo-->
            <a href="#" class="logo">
                <span>Green</span>Mart
            </a>

            <!--menu-->
            <ul class="menu">
                <li>
                    <a href="index.jsp" class="active"> 
                        Home
                    </a>
                </li>

				<li>
					<a href="AboutUs.jsp">
						About&nbsp;us
					</a>
                </li>
                
                <li>
                    <a href="FeedbackForm.jsp"> 
                        Feedback
                    </a>
                </li>
				
                <li>
                    <a href="login.jsp">
                        Login
                    </a>
                </li>
                
                <li>
                    <a href="signup.jsp">
                        Sign&nbsp;Up
                    </a>
                </li>
                
                <li>
                    <a href="logout">
                        Logout
                    </a>
                </li>
			</ul>

            <!--right-nav-(cart-like)-->
            <div class="right-nav">
                <!--cart-->
                <a href="ShoppingCart.jsp" class="cart">
                    <i class="fa-solid fa-cart-shopping"></i>
                </a>
            </div>
        </nav>
        <!--nav-end-->

        <!--banner-->
        <section id="banner">

            <!--bg-->
            <img alt="bg" class="bg-1" src="banner.jpg">

            <!--text-->
            <div class="banner-text">
                <h1>  
                    Order Your Daily Groceries <br>and Essential Needs
                </h1>

                <br>

                <h3 style="color: rgb(0, 0, 0); text-align: center;" >
                    Your Fresh Choice for a Greener Life
                </h3>
            </div>
        </section>
        <!--main-banner-end-->
        
        <!--products-->
        <section id="product">
            <!--heading-->
            <div class="product-heading">
                <h3>Products</h3>
            </div>

            <!--box-container-->
            <div class="product-container">
                <!--box-->
                <div class="product-box">
                    <img alt="apple" src="https://i.imgur.com/vUJ2JKU.png">
                    <strong>Apple</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 220</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="chili" src="https://i.imgur.com/rFhSMZN.png">
                    <strong>Chili</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 230</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Onion" src="https://i.imgur.com/sGLggWL.jpg">
                    <strong>Onion</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 200</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Potato" src="https://i.imgur.com/WFjH6ui.png">
                    <strong>Potato</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 150</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Garlic" src="https://i.imgur.com/XVLuy2J.png">
                    <strong>Garlic</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 120</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Tomato" src="https://i.imgur.com/8l5hDhS.png">
                    <strong>Tomato</strong>
                    <span class="quantity">100g</span>
                    <span class="price">Rs. 180</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>

                <!--box-->
                <div class="product-box">
                    <img alt="Panda Baby cream" src="https://www.nbc.lk/storage/uploads/image/1_61af42354631f.png/medium/1_61af42354631f.png">
                    <strong>Panda Baby Cream</strong>
                    <span class="quantity">200ml</span>
                    <span class="price">Rs. 250</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Johnsons baby shampoo" src="https://static.beautytocare.com/cdn-cgi/image/width=1600,height=1600,f=auto/media/catalog/product//j/o/johnson-s-baby-shampoo-with-dispenser-750ml.jpg">
                    <strong>Johnsons Baby Shampoo</strong>
                    <span class="quantity">750ml</span>
                    <span class="price">Rs. 500</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Wet Wipes" src="https://www.kidzcare.lk/sites/default/files/field/product/FrontAngle_1024x1024%402x.jpg">
                    <strong>Marvel Baby Wet Wipes</strong>
                    <span class="quantity">80pcs</span>
                    <span class="price">Rs. 580</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Face Cream" src="https://static.beautytocare.com/cdn-cgi/image/width=1600,height=1600,f=auto/media/catalog/product//n/i/nivea-men-protect-care-24h-moisturizing-face-cream-75ml.jpg">
                    <strong>Nivea Men Face Cream</strong>
                    <span class="quantity">75ml</span>
                    <span class="price">Rs. 4880</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Beard Oil" src="https://i0.wp.com/thebeardarmour.com/wp-content/uploads/2020/05/original_front-scaled.jpg?fit=2560%2C2560&ssl=1">
                    <strong>Beard Oil Original</strong>
                    <span class="quantity">15ml</span>
                    <span class="price">Rs. 2690</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Lip Balm" src="https://www.ubuy.com.lk/productimg/?image=aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9zZW8vVmFzZWxpbmUtTGlwLVRoZXJhcHktVGludGVkLUxpcC1CYWxtLU1pbmktUm9zeS0wLTI1LW96XzZmY2VkMzZlLTU0NTktNDQ5Zi05MzkwLWYyMzljMzc5YmQ2YV8xLjc1Mjc2MTk5ZGZhODg3N2I0ZDE4OGYwMzIwMjk5MTNmLmpwZWc.jpg">
                    <strong>Vaseline Lip Balm</strong>
                    <span class="quantity">7g</span>
                    <span class="price">Rs. 7200</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Pencils" src="https://premiumstationers.lk/cdn/shop/products/01-20.jpg?v=1630773779">
                    <strong>Maped Pencils</strong>
                    <span class="quantity">12pcs</span>
                    <span class="price">Rs. 1560</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Pen" src="https://www.thefullstop.lk/wp-content/uploads/2022/08/Cl-Frixion-Black.jpg">
                    <strong>Pilot FriXion Pen</strong>
                    <span class="quantity">1pcs</span>
                    <span class="price">Rs. 620</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
                <!--box-->
                <div class="product-box">
                    <img alt="Sticky Notes" src="https://www.thefullstop.lk/wp-content/uploads/2022/07/760010-2.jpg">
                    <strong>Maped Sticky Notes</strong>
                    <span class="quantity">100 sheets</span>
                    <span class="price">Rs. 500</span>
                    <!--cart-btn-->
                    <a href="ShoppingCart.jsp" class="cart-btn">
                        Add to Cart
                    </a>
                </div>
            </div>
        </section>
        <!--products-end-->     
        
        <!--footer-->
        <footer>
            <div class="footer-container">
                <!--logo-container-->
                <div class="footer-logo">
                    <a href="#">
                        <span>Green</span>Mart
                    </a>
                    <!--social-->
                    <div class="footer-social">
                        <img src ="paypal.png">
                    </div>
                </div>
            
            <div class="footer-links">
                <strong>Contact</strong>
                <ul>
                    <li style = "color: white;">Phone : +94 112 345 678</li>
                    <li style = "color: white;">Email : greenmart@gmail.com</li>
                </ul>
				<br><p style="color: aliceblue;">Copyright ©2023 | GreenMart All Rights Reserved</p>
            </div>
            </div>
        </footer>
        <!--footer-end-->

    </body>
</html>
