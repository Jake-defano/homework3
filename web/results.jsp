<%-- 
    Document   : results
    Created on : Oct 1, 2015, 10:15:34 PM
    Author     : jdefano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        
        <link rel ="Stylesheet" href="jake2css.css" type="text/css">
        
    </head>
    
    <%
        String pretaxdeduct = request.getParameter("pretaxdeduct");
        int hoursworked = Integer.parseInt(request.getParameter("hoursworked"));
        int othours = hoursworked - 40 ;
        if (othours < 0)
            othours= 0;
        int hourlypay = Integer.parseInt(request.getParameter("hourlypay"));
        double othourlyrate = hourlypay * 1.5;
        double grosspay = (hoursworked * hourlypay) + (othours * othourlyrate) ;
        double pretaxpay = Integer.parseInt(request.getParameter("pretaxdeduct"));
        double pretaxpayment = grosspay - pretaxpay;
        double taxrate = 0 ;
        
        if (grosspay < 500)
            taxrate = 0.18 ;
                    else taxrate = 0.22 ;
        
        %>
    <body>
        <h1>Results</h1>
        <table border="2" cellpadding="10" bordercolor="white">
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>
                    <td> <%= request.getParameter("hoursworked")%></td>
        </tr>    
        
        <tr>
                    <td> Hourly Rate: </td>
                    <td> <%= request.getParameter("hourlypay")%></td>
        </tr>    
        <tr>
                    <td> # Hours Overtime: </td>
                    <td> <%= othours %></td>
        </tr>    
         <tr>
                    <td> Overtime Hourly Rate </td>
                    <td> <%= othourlyrate %></td>
        </tr>
          <tr>
                    <td> Gross Pay </td>
                    <td> <%= grosspay %></td>
        </tr>
        
        <tr>
                    <td> Pre-Tax Deductions: </td>
                    <td> <%= request.getParameter("pretaxdeduct")%></td>
        </tr>    
        
         <tr>
                    <td> Pre-Tax Income: </td>
                    <td> <%= pretaxpayment %></td>
        </tr>    
        
         <tr>
                    <td> Tax Bracket: </td>
                    <td> <%=taxrate      %>  </td>
        </tr>    
        </tbody> 
</table>
            
        
        </ul>
    </body>
</html>
