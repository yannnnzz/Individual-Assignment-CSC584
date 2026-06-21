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

public class ProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String studentID = request.getParameter("studentID");
        String name = request.getParameter("name");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        ProfileBean profile = new ProfileBean();

        profile.setStudentID(studentID);
        profile.setName(name);
        profile.setProgramme(programme);
        profile.setEmail(email);
        profile.setHobbies(hobbies);
        profile.setIntroduction(introduction);

        try {

            Connection conn = DBConnection.getConnection();

            String sql =
                    "INSERT INTO Profile VALUES (?,?,?,?,?,?)";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, studentID);
            ps.setString(2, name);
            ps.setString(3, programme);
            ps.setString(4, email);
            ps.setString(5, hobbies);
            ps.setString(6, introduction);

            ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();

        }

        request.setAttribute("profile", profile);

        request.getRequestDispatcher("profile.jsp")
                .forward(request, response);

    }

}