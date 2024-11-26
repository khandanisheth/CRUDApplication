<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Insert Data</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-4">
            <h2 class="text-center">Insert New Record</h2>
            <form action="insert.jsp" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea class="form-control" name="mess" id="message" rows="3" required></textarea>
                </div>
                <div class="form-group">
                    <label for="course">Course</label>
                    <select class="form-control" name="sub" id="course">
                        <option value="BCA">BCA</option>
                        <option value="MCA">MCA</option>
                        <option value="BSC">BSC</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <%
                Connection conn = null;
                PreparedStatement ps = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/python_db", "root", "6375");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String mess = request.getParameter("mess");
                    String sub = request.getParameter("sub");
                    if (name != null && email != null && mess != null && sub != null) {
                        String query = "INSERT INTO infor (name, email, address, course) VALUES (?, ?, ?, ?)";
                        ps = conn.prepareStatement(query);
                        ps.setString(1, name);
                        ps.setString(2, email);
                        ps.setString(3, mess);
                        ps.setString(4, sub);
                        int i = ps.executeUpdate();
                        if (i == 1) {
                            out.println("<div class='alert alert-success mt-3'>Record Inserted Successfully!</div>");
                        }
                    }
                } catch (Exception e) {
                    out.println("<div class='alert alert-danger mt-3'>Error: " + e.getMessage() + "</div>");
                    e.printStackTrace();
                } finally {
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                }
            %>
        </div>
    </body>
</html>
