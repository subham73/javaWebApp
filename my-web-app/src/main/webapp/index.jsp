<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Web Application</title>
</head>
<body>
    <h2>fherktf ergth on</h2>
    <h2>hii priya and others  </h2>

    <p>Current Date and Time: 
        <%
            java.util.Date date = new java.util.Date();
            out.println(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date));
        %>
    </p>

</body>
</html>