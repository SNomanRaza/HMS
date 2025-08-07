<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Student Registration - Hostel Management</title>
    <link rel='stylesheet' href='style.css'>
</head>
<body>
    <div class='container'>
        <div class='form-container'>
            <h1>📋 Student Hostel Registration Form</h1>
            <form method='POST' action='dashboard.jsp'>
                <div class='form-section'>
                    <h2>👤 Personal Info</h2>
                    <div class='form-group'>
                        <label>Full Name:</label>
                        <input type='text' name='fullName' class='form-control' required>
                    </div>
                    <div class='form-group'>
                        <label>Gender:</label>
                        <select name='gender' class='form-control' required>
                            <option value=''>Select Gender</option>
                            <option value='male'>Male</option>
                            <option value='female'>Female</option>
                            <option value='other'>Other</option>
                        </select>
                    </div>
                    <div class='form-group'>
                        <label>DOB:</label>
                        <input type='date' name='dob' class='form-control' required>
                    </div>
                    <div class='form-group'>
                        <label>Email:</label>
                        <input type='email' name='email' class='form-control' required>
                    </div>
                    <div class='form-group'>
                        <label>Mobile No:</label>
                        <input type='tel' name='mobile' class='form-control' pattern='[0-9]{10}' required>
                    </div>
                </div>

                <div class='form-section'>
                    <h2>🏠 Address Info</h2>
                    <div class='form-group'>
                        <label>Address Line 1:</label>
                        <input type='text' name='address' class='form-control' required>
                    </div>
                    <div class='form-group'>
                        <label>City:</label>
                        <input type='text' name='city' class='form-control' required>
                    </div>
                    <div class='form-group'>
                        <label>Pincode:</label>
                        <input type='text' name='pincode' class='form-control' pattern='[0-9]{6}' required>
                    </div>
                </div>

                <div class='form-section'>
                    <h2>🍛 Mess Info</h2>
                    <div class='form-group'>
                        <label>Opt Mess?</label>
                        <select name='messOpt' class='form-control'>
                            <option value='yes'>Yes</option>
                            <option value='no'>No</option>
                        </select>
                    </div>
                    <div class='form-group'>
                        <label>Food Type:</label>
                        <select name='foodType' class='form-control'>
                            <option value=''>Select</option>
                            <option value='veg'>Veg</option>
                            <option value='nonveg'>Non-Veg</option>
                        </select>
                    </div>
                </div>

                <div class='form-section'>
                    <h2>🛏 Preferences</h2>
                    <div class='form-group'>
                        <label>Preferred Room Block:</label>
                        <select name='roomBlock' class='form-control'>
                            <option value='A'>A</option>
                            <option value='B'>B</option>
                        </select>
                    </div>
                </div>

                <button type='submit' class='btn'>✅ Submit Application</button>
            </form>
        </div>
    </div>
</body>
</html>
