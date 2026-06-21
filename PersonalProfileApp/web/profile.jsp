<%-- 
    Document   : profile
    Created on : May 20, 2026, 11:25:13 AM
    Author     : fatin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.profile.ProfileBean"%>

<%
ProfileBean p = (ProfileBean) request.getAttribute("profile");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Profile Result</title>

    <style>

        body{
            background: linear-gradient(to right, #cceeff, #66b3ff);
            font-family: Arial, sans-serif;
            margin:0;
            padding:0;
        }

        .box{
            margin-top:50px;
            padding:30px;
            background:#b4d5ed;
            border-radius:20px;
            box-shadow:0px 0px 10px gray;
            max-width:700px;
        }

        h1{
            margin-bottom:20px;
            color:#ffc1cc;
        }

    </style>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>

<body>

<div class="container box">

    <h1 class="text-center">Personal Profile Result</h1>

    <div class="card p-4">

        <h4>Name: <%= p.getName()%></h4>
        <hr>

        <h4>Student ID: <%= p.getStudentID()%></h4>
        <hr>

        <h4>Programme: <%= p.getProgramme()%></h4>
        <hr>

        <h4>Email: <%= p.getEmail()%></h4>
        <hr>

        <h4>Hobbies: <%= p.getHobbies()%></h4>
        <hr>

        <h4>Introduction: <%= p.getIntroduction()%></h4>

        <br><br>

        <a href="index.html"
           class="btn btn-primary w-100">

            Back to Form

        </a>

        <br><br>

        <a href="ViewProfilesServlet"
           class="btn btn-success w-100">

            View All Profiles

        </a>

    </div>

</div>

</body>
</html>
