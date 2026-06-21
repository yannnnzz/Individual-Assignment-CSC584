/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.profile;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ViewProfilesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<String[]> list = new ArrayList<>();

        try {

            Connection conn = DBConnection.getConnection();

            PreparedStatement ps =
                    conn.prepareStatement(
                            "SELECT * FROM Profile");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String[] row = {

                    rs.getString("studentID"),
                    rs.getString("name"),
                    rs.getString("programme"),
                    rs.getString("email"),
                    rs.getString("hobbies"),
                    rs.getString("introduction")

                };

                list.add(row);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        request.setAttribute("list", list);

        request.getRequestDispatcher("viewProfiles.jsp")
                .forward(request, response);

    }

}