<%-- 
    Document   : loancalculator
    Created on : Feb 6, 2017, 11:28:18 PM
    Author     : linhdo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Loan Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="main.css" rel="stylesheet">
        <script src="mainscript.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 col-xs-12">
                    <h1 class="title"><img src="img/diamond.png" alt="">Diamond Lending Bank</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 col-xs-12">
                    <form id="loanForm" name="loan" class="form" method="POST" action="LoanCalculator">
                        <div class="form-group row">
                            <div class="col-sm-12 col-md-offset-3">
                                <div><label>Please Enter Your Salary:</label></div>
                                <div class="col-md-4"><input type="text" name="salary" value="" class="form-control"/></div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 col-md-offset-3">
                                <div><label>Please enter your credit score:</label></div>
                                <div class="col-md-4"><input type="text" name="credit" value="" class="form-control"/></div>
                            </div>
                        </div>
                         <div class="form-group row">
                             <div class="col-sm-12 col-md-offset-3">
                                 <div><label>Number months at current job:</label></div>
                                 <div class="col-md-4"><input type="text" name="month" value="" class="form-control"/></div>
                             </div>
                        </div>
                         <div class="form-group row">
                             <div class="col-sm-12 col-md-offset-3">
                                 <c:choose>
                            <c:when test="${salary >= 40000}">
                                <c:when test="${credit>= 600 || month > 12}">
                                    <h3><c:out value="${resMsg}"/></h3>
                                </c:when>
                            </c:when>
                            <c:when test="${salary < 40000}">
                                <c:when test="${credit>= 600 && month > 12}">
                                    <h3><c:out value="${resMsg}"/></h3>
                                </c:when>
                            </c:when>
                        </c:choose>
                                 
                             </div> 
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-lg" id="submitForm">Submit</button>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
            
        </div>
        
    </body>
</html>
