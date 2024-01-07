package com.greenmart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.greenmart.connection.dbCon;
import com.greenmart.dao.orderDao;
import com.greenmart.model.CartModel;
import com.greenmart.model.OrderModel;
import com.greenmart.model.UserModel;

@WebServlet("/success")
public class SuccessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

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

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}