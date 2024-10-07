<%@ page import="java.util.List, com.jfsd_lab.exp_6.model.User"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Add Event</title>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.select2').select2({
                placeholder: "Select a user",
                allowClear: true
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <h2>Add Event</h2>
        <form:form action="add-event" method="post" modelAttribute="event">
            <div class="form-group">
                <label for="title">Title:</label>
                <form:input path="title" cssClass="form-control" id="title" />
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <form:textarea path="description" rows="3" cssClass="form-control" id="description" />
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <form:input path="amnt" cssClass="form-control" id="amount" />
            </div>
            <div class="form-group">
                <label for="resourcePerson">Resource Person:</label>
                <form:select path="resourcePerson.id" cssClass="form-control select2" id="resourcePerson">
                    <form:option value="" label="Select a user" />
                    <%
                        @SuppressWarnings("unchecked")
                        List<User> allUsers = (List<User>) request.getAttribute("allUsers");
                        for (User user : allUsers) {
                    %>
                    <form:option value="<%= user.getId() %>"><%= user.getName() %></form:option>
                    <%
                        }
                    %>
                </form:select>
            </div>
            <div class="form-group text-center">
                <input type="submit" value="Add Event" class="btn btn-primary" />
            </div>
        </form:form>
    </div>
</body>
</html>
