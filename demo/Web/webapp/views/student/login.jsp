<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Login - Hostel Management System</title>
    <link rel='stylesheet' href='style.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'>
</head>
<body>
    <div class='login-wrapper'>
        <div class='login-container'>
            <h1><i class='fas fa-school'></i> Student Login</h1>
            <form action='dashboard.jsp' method='GET'>
                <div class='form-group'>
                    <label for='email'><i class='fas fa-envelope'></i> Email</label>
                    <input type='email' id='email' name='email' class='form-control' required>
                </div>

                <div class='form-group'>
                    <label for='password'><i class='fas fa-lock'></i> Password</label>
                    <input type='password' id='password' name='password' class='form-control' required>
                </div>

                <div class='form-group' style='text-align: right;'>
                    <a href='#' class='links'><i class='fas fa-question-circle'></i> Forgot Password?</a>
                </div>

                <button type='submit' class='btn'><i class='fas fa-sign-in-alt'></i> Login</button>
                <div class='links'><p>New student? <a href='registration.jsp'>Register here</a></p></div>
            </form>
        </div>
    </div>
</body>
</html>
