<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 12:29:23?pm
    Author     : Admin
--%>

<%
    String wRaw = request.getParameter("weight");
    String hRaw = request.getParameter("height");

    double weight = 0;
    double height = 0;

    try {
        weight = Double.parseDouble(wRaw);
        height = Double.parseDouble(hRaw);

        if (height <= 0) {
            out.println("<script>alert('Height must be greater than zero!'); history.back();</script>");
        } else {

            double bmi = weight / (height * height);

            String category = "";
            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25.0) {
                category = "Normal";
                
            } else {
                category = "Overweight";
            }

%>
<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmiVal" value="<%= String.valueOf(bmi)%>" />
    <jsp:param name="cat" value="<%= category%>" />
</jsp:forward>
<%
        }
    } catch (Exception e) {
        out.println("<script>alert('Please enter valid numeric values!'); history.back();</script>");
    }
%>