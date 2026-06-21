/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.profile;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class DeleteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String studentID =
                request.getParameter("studentID");

        try {

            Connection conn = DBConnection.getConnection();

            String sql =
                    "DELETE FROM Profile WHERE studentID=?";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, studentID);

            ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();

        }

        response.sendRedirect("ViewProfilesServlet");

    }

} 

