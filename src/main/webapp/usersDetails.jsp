<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/usersDetails.css">
    <link rel="stylesheet" href="styles/header.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Admin-Dashboard</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    USERS DETAILS
    <span class="line"></span>
  </h2>


 <div class="steps">
  <div class="step active">
    <div class="circle">1</div>
    <a href="#user-accounts"><span class="label">User Accounts</span></a>
  </div>
  <div class="step active">
    <div class="circle">2</div>
    <a href="#payments-details"><span class="label">Payments Details</span></a>
  </div>
  <div class="step active">
    <div class="circle">3</div>
    <a href="#guests-list"><span class="label">Guests Lists</span></a>
  </div>
  <div class="step active">
    <div class="circle">4</div>
    <a href="#hotel-reservation"><span class="label">Hotel Reservation</span></a>
  </div>
  <div class="step active">
    <div class="circle">5</div>
    <a href="#messages"><span class="label">Messages</span></a>
  </div>
</div>
</div>


<div id="user-accounts" class="user-management">
    <div class="name"><b>Manage User Accounts</b></div>
    
    <table>
        <tr>
            <th>User ID</th>
            <th>User Name</th>
            <th>User Full Name</th>
            <th>User Email</th>
            <th>User Password</th>
            <th>Action</th>
        </tr>
        <!-- Sample row -->
        <tr>
            <td>U001</td>
            <td>user01</td>
            <td>John Doe</td>
            <td>john@example.com</td>
            <td>********</td>
            <td><button>Edit</button> <button>Delete</button></td>
        </tr>
    </table>
</div>


<div id="payments-details" class="payments-section">
    <div class="name"><b>Payments</b></div>
    <table>
        <tr>
            <th>Payment ID</th>
            <th>Order ID</th>
            <th>User ID</th>
            <th>Card Type</th>
            <th>Card Number</th>
            <th>Expiry Date</th>
            <th>Security Code</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Cost</th>
            <th>Date</th>
        </tr>
        <!-- Sample row -->
        <tr>
            <td>PMT123</td>
            <td>ORD456</td>
            <td>U001</td>
            <td>Visa</td>
            <td>**** **** **** 1234</td>
            <td>12/25</td>
            <td>***</td>
            <td>123 Main St</td>
            <td>Colombo</td>
            <td>WP</td>
            <td>Sri Lanka</td>
            <td>$500.00</td>
            <td>2025-05-01</td>
        </tr>
    </table>
</div>

<div id="guests-list" class="guests-section">
    <div class="name"><b>Guests List</b></div>
    <table>
        <tr>
            <th>Guest ID</th>
            <th>Name</th>
            <th>Reservation ID</th>
            <th>Status</th>
        </tr>
        <!-- Sample row -->
        <tr>
            <td>G001</td>
            <td>Jane Smith</td>
            <td>RES789</td>
            <td>Confirmed</td>
        </tr>
    </table>
</div>

<div id="hotel-reservation" class="reservations-section">
    <div class="name"><b>Hotel Reservations</b></div>
    <table>
        <tr>
            <th>Reservation ID</th>
            <th>User ID</th>
            <th>Date</th>
            <th>Package</th>
            <th>Status</th>
        </tr>
        <!-- Sample row -->
        <tr>
            <td>RES789</td>
            <td>U001</td>
            <td>2025-06-15</td>
            <td>Gold</td>
            <td>Confirmed</td>
        </tr>
    </table>
</div>


<div id="messages" class="messages-section">
    <div class="name"><b>Messages</b></div>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Action</th>
        </tr>
        <!-- Sample row -->
        <tr>
            <td>MSG001</td>
            <td>Emily White</td>
            <td>emily@example.com</td>
            <td>Can I reschedule my reservation?</td>
            <td><button>Reply</button> <button>Delete</button></td>
        </tr>
    </table>
</div>

</body>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    const stepLinks = document.querySelectorAll('.step-link');

    stepLinks.forEach(link => {
      link.addEventListener('click', function (e) {
        e.preventDefault();
        const targetId = this.getAttribute('data-target');
        const targetEl = document.getElementById(targetId);

        if (targetEl) {
          targetEl.scrollIntoView({ behavior: 'smooth' });
        }
      });
    });
  });
</script>


</html>