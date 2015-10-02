<%-- 
    Document   : index
    Created on : Oct 1, 2015, 10:07:47 PM
    Author     : jdefano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        
        <link rel ="Stylesheet" href="jake2css.css" type="text/css">
    </head>
    
   
    <body>
        
        <h1>Hello World!</h1>
        
        
               
        <form action="results.jsp" method="GET">
            <br> Hours Worked: <input type="text" name="hoursworked"
             <br />
            <br> Hourly Pay: <input type="text" name="hourlypay"
                                  </br>
             <br> Pre-Tax Deduct: <input type="text" name="pretaxdeduct"
                                  </br>
              <br> Post-Tax Deduct: <input type="text" name="posttaxdeduct"
                                  </br>
           <input type="submit" value="Submit" />
           <input type="reset" value="Clear" />
        </form>
      
        
    </body>
</html>
