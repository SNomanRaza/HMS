<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Student Dashboard - Hostel Management System</title>
    <link rel='stylesheet' href='style.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'>
</head>
<body>
    <div class='dashboard-container'>
        <!-- Top bar -->
        <div class='top-bar'>
            <div class='welcome-message'>Welcome, John Doe!</div>
            <div class='status-info'>
                <div class='status-item present'><i class='fas fa-check-circle'></i><span>Present Today</span></div>
                <div class='status-item'><i class='fas fa-clock'></i><span>Check-in: 8:30 AM</span></div>
                <div class='profile-dropdown'>
                    <div class='profile-trigger'><i class='fas fa-user'></i></div>
                    <div class='profile-menu'>
                        <div class='profile-header'>
                            <img src='https://via.placeholder.com/60' alt='Profile Photo'>
                            <div class='profile-header-info'><h4>John Doe</h4><p>Student ID: HMS001</p></div>
                        </div>
                        <div class='profile-menu-items'>
                            <a href='#profile'><i class='fas fa-user-circle'></i>View Profile</a>
                            <a href='#settings'><i class='fas fa-cog'></i>Settings</a>
                            <a href='login'><i class='fas fa-sign-out-alt'></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sidebar -->
        <div class='sidebar'>
            <ul class='sidebar-menu'>
                <li><a href='#dashboard' data-section='dashboard' class='active'><i class='fas fa-home'></i><span>Dashboard</span></a></li>
                <li><a href='#room' data-section='room'><i class='fas fa-bed'></i><span>Room</span></a></li>
                <li><a href='#complaints' data-section='complaints'><i class='fas fa-exclamation-circle'></i><span>Complaints</span></a></li>
                <li><a href='#fees' data-section='fees'><i class='fas fa-rupee-sign'></i><span>Fees</span></a></li>
                <li><a href='#attendance' data-section='attendance'><i class='fas fa-calendar-check'></i><span>Attendance</span></a></li>
                <li><a href='#feedback' data-section='feedback'><i class='fas fa-comment'></i><span>Feedback</span></a></li>
                <li><a href='#mess' data-section='mess'><i class='fas fa-utensils'></i><span>Mess</span></a></li>
            </ul>
        </div>

        <!-- Main Content -->
        <div class='main-content'>
            <div class='content-area'>
                <!-- Dashboard Panel -->
                <div class='dashboard-section active' id='dashboard-section'>
                    <div class='dashboard-panel'>
                        <div class='panel-item'>
                            <h3>📍 My Room</h3>
                            <p><strong>Block A – </strong> Room 205</p>
                            <p><strong>Room Type: </strong> Sharing</p>
                            <p><strong>Roommate: </strong> Jane Smith</p>
                        </div>
                        <div class='panel-item'>
                            <h3>💰 Fee Status</h3>
                            <p><strong>Amount: </strong> ₹5,000</p>
                            <p><strong>Date: </strong> 15th March 2024</p>
                            <button class='btn'>Pay Now</button>
                        </div>
                        <div class='panel-item'>
                            <h3>🔔 Notifications</h3>
                            <ul>
                                <li>Maintenance work scheduled for tomorrow</li>
                                <li>Mess menu updated for this week</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Add other sections (room, complaints, fees, etc.) if needed -->
            </div>
        </div>
    </div>

    <script>
        function showSection(sectionId) {
            document.querySelectorAll('.dashboard-section').forEach(s => s.classList.remove('active'));
            const selected = document.getElementById(sectionId + '-section');
            if (selected) selected.classList.add('active');
            document.querySelectorAll('.sidebar-menu a').forEach(a => {
                a.classList.remove('active');
                if (a.getAttribute('data-section') === sectionId) a.classList.add('active');
            });
        }

        document.querySelectorAll('.sidebar-menu a').forEach(link => link.addEventListener('click', function(e) {
            e.preventDefault();
            showSection(this.getAttribute('data-section'));
        }));

        showSection('dashboard');
    </script>
</body>
</html>
