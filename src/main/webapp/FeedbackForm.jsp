<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="ISO-8859-1">
        <title>Feedback Form</title>

        <link rel="stylesheet" href="css/FeedbackForm.css">
        
        <!--Favicon-->
		<link rel="icon" type="image/x-icon" href="images/favicon.ico" />
        
        <script src="js/FeedbackForm.js"></script>
    </head>

    <body>
        <div class="wrapper">
            <h2 align = 'center'>  
                Feedback Form
            </h2>

            <div id="error_message"></div>

            <form id="myform" onsubmit="return validate();">
                <div class="input_field">
                    <input type="text" placeholder="Name" id="name">
                </div>

                <div class="input_field">
                    <input type="text" placeholder="Subject" id="subject">
                </div>

                <div class="input_field">
                    <input type="text" placeholder="Phone" id="phone">
                </div>

                <div class="input_field">
                    <input type="text" placeholder="Email" id="email">
                </div>

                <div class="input_field">
                    <textarea placeholder="Message" id="message"></textarea>
                </div>

                <button type="submit" class="btn">
                    <a href="FeedbackFormConfirm.jsp" style = 'color: white; text-decoration: none;'>
                        Submit
                    </a>            
                </button>

                <button type="button" class="btn">
                    <a href="index.jsp" style = 'color: white; text-decoration: none;'>
                        Home
                    </a>          
                </button>
            </form>
        </div>
    </body>
</html>