<%-- 
    Document   : viewProfiles
    Created on : Jun 19, 2026, 5:50:19 PM
    Author     : fatin
--%>

<%@page import="java.util.ArrayList"%>

<%
ArrayList<String[]> list =
(ArrayList<String[]>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>

<title>All Student Profiles</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
    background: linear-gradient(to right, #cceeff, #66b3ff);
    font-family: Arial, sans-serif;
    margin:0;
    padding:0;
}

.box{
    margin:50px auto;
    padding:30px;
    background:#b4d5ed;
    border-radius:20px;
    box-shadow:0px 0px 10px gray;
    max-width:1200px;
}

h1{
    text-align:center;
    color:black;
    margin-bottom:25px;
}

table{
    background:white;
}

th{
    background:#4da6ff !important;
    color:white;
    text-align:center;
}

td{
    vertical-align:middle;
}

.btn-delete{
    background:#ff4d4d;
    color:white;
    text-decoration:none;
    padding:6px 12px;
    border-radius:5px;
}

.btn-delete:hover{
    background:#cc0000;
    color:white;
}

</style>

</head>

<body>

<div class="container">

    <div class="box">

        <h1>All Student Profiles</h1>

        <table class="table table-bordered table-hover">

            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Programme</th>
                <th>Email</th>
                <th>Hobbies</th>
                <th>Introduction</th>
                <th>Delete</th>
            </tr>

            <%
            if(list != null){
                for(String[] row:list){
            %>

            <tr>

                <td><%=row[0]%></td>
                <td><%=row[1]%></td>
                <td><%=row[2]%></td>
                <td><%=row[3]%></td>
                <td><%=row[4]%></td>
                <td><%=row[5]%></td>

                <td class="text-center">

                    <a href="DeleteServlet?studentID=<%=row[0]%>"
                       class="btn-delete">
                        Delete
                    </a>

                </td>

            </tr>

            <%
                }
            }
            %>

        </table>

        <a href="index.html"
           class="btn btn-primary w-100">
            Back to Form
        </a>

    </div>

</div>

</body>
</html>