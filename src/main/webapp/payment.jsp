<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Gateway</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
<style>
  /* Form styling */
  form {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px #ccc;
    background-color: #fff;
  }
  
  /* Button styling */
  input[type="submit"] {
    background-color: #2196f3;
    border-color: #2196f3;
    color: #fff;
    margin-top: 20px;
  }
  
  input[type="submit"]:hover {
    background-color: #1565c0;
    border-color: #1565c0;
    color: #fff;
  }
  
  /* Field label styling */
  label {
    font-weight: bold;
    color: #333;
  }
  
  /* Field input styling */
  input[type="text"] {
    border-radius: 5px;
    border: 1px solid #ccc;
    padding: 10px;
  }
  
  /* Payment gateway header */
  .header {
    background-color: #2196f3;
    color: #fff;
    text-align: center;
    padding: 20px;
    margin-bottom: 50px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
  }
  
  /* Payment gateway footer */
  .footer {
    background-color: #f1f1f1;
    color: #333;
    text-align: center;
    padding: 10px;
    margin-top: 50px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
  }
  
  /* Field error message styling */
  .error-message {
    color: red;
    font-size: 14px;
    margin-top: 5px;
  }
  
  /* Custom checkbox styling */
  .custom-checkbox .custom-control-input:checked~.custom-control-label::before {
    background-color: #2196f3;
    border-color: #2196f3;
  }
  
  .custom-checkbox .custom-control-label::before {
    border-color: #ccc;
  }
  
  .custom-checkbox .custom-control-label::after {
    top: 2px;
    left: 6px;
    width: 6px;
    height: 11px;
    border: solid white;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
  }
  
  /* Custom radio button styling */
  .custom-radio .custom-control-input:checked~.custom-control-label::before {
    background-color: #2196f3;
    border-color: #2196f3;
  }
  
  .custom-radio .custom-control-label::before {
    border-color: #ccc;
  }
  
  .custom-radio .custom-control-label::after {
    top: 6px;
    left: 6px;
    width: 8px;
    height: 8px
}
</style>
</head>
<body>
  <div class="header">
    <h1>Payment Gateway</h1>
  </div>
  <div class="container">
    <form action="process-payment.jsp" method="POST">
      <div class="form-group">
        <label for="card-number">Credit Card Number:</label>
        <input type="text" class="form-control" id="card-number" name="card-number" required>
      </div>
      <div class="form-group">
        <label for="expiration-date">Expiration Date:</label>
        <input type="text" class="form-control" id="expiration-date" name="expiration-date" placeholder="MM/YY" required>
      </div>
      <div class="form-group">
        <label for="security-code">Security Code:</label>
        <input type="text" class="form-control" id="security-code" name="security-code" placeholder="CVV" required>
      </div>
      
      <input type="hidden" name="pass-id" value="<%=request.getParameter("id")%>">
      <input type="submit" class="btn btn-primary" value="Submit Payment">
      
    </form>
  </div>
  <div class="footer">
    <p>&copy; 2023 Digital Bus Pass. All rights reserved.</p>
  </div>
  </body>
  </html>
