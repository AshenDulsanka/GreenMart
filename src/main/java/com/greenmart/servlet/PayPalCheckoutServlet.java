package com.greenmart.servlet;

import com.greenmart.connection.dbCon;
import com.greenmart.dao.orderDao;
import com.greenmart.model.CartModel;
import com.greenmart.model.OrderModel;
import com.greenmart.model.UserModel;
import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/PayPalCheckoutServlet")
public class PayPalCheckoutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("application/json");

    	
        try {
            // Retrieve PayPal order ID from request
            String payPalOrderId = request.getParameter("paymentID");

            if (payPalOrderId != null) {
                // Verify payment status using PayPal API
                APIContext apiContext = new APIContext("ASV5SyLF0tXQu9Q-YqKU1PVsqoZap1nvVwhPHzIz3pXk6-2rn1ctUdZx35j1d12ZO2QG9CBhtATtnpZN", "EOSa2AifSbJ8l9I16--hXaWqZx6QaU5f4febcldH2gv3U2x3O_2hh5Gr2eoltkRAYv_CzjqXmHYvjHNZ", "https://sandbox.paypal.com");
                Payment payment = Payment.get(apiContext, payPalOrderId);
                
                // Log the payment state (for debugging purposes)
                System.out.println("Payment State: " + payment.getState());
                
                if (payment.getState().equals("approved")) {
                    // Payment successful
                    // Proceed with database operations
                    HttpSession session = request.getSession();
                    ArrayList<CartModel> cart_list = (ArrayList<CartModel>) session.getAttribute("cart-list");

                    UserModel auth = (UserModel) session.getAttribute("auth");

                    if (cart_list != null && auth != null) {
                        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                        Date date = new Date();

                        for (CartModel c : cart_list) {
                            OrderModel order = new OrderModel();
                            order.setProductID(c.getProductID());
                            order.setCustID(auth.getCustID());
                            order.setQuantity(c.getQuantity());
                            order.setDate(format.format(date));
                            order.setAmount(c.getPrice());

                            orderDao oDao = new orderDao(dbCon.getConnection());
                            boolean result = oDao.insertOrder(order);

                            if (!result) {
                                response.sendRedirect("error.jsp");
                                return;
                            }
                        }

                        cart_list.clear();
                        response.sendRedirect("success.jsp");
                    } else {
                        response.sendRedirect("error.jsp");
                    }
                }
            } else {
                // Handle the case where paymentID is null
                response.sendRedirect("error.jsp");
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}


