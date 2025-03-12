# 🚌 Digital Bus Pass System

The **Digital Bus Pass System** is a web-based application built using **Java, JSP, and Servlets** to simplify the process of issuing, managing, and verifying bus passes. It features three types of users: **Pass Holder**, **Conductor**, and **Admin**.

---

## 🚀 Features

### 👤 **Pass Holder**
- Apply for a new bus pass online
- Upload required documents
- Check pass status and validity
- Renew bus pass before expiry
- Download & print digital pass

### 🎫 **Conductor**
- Scan pass ID and validate pass
- Check passholder details & expiration date
- Report expired or invalid passes

### 🛠️ **Admin**
- Approve or reject pass applications
- Manage user data and pass records
- View analytics and reports
- Handle complaints and feedback

---

## 🏗️ Tech Stack

- **Frontend:** HTML, CSS, JavaScript, Bootstrap
- **Backend:** Java, JSP, Servlets
- **Database:** MySQL
- **Server:** Apache Tomcat
- **Tools:** Eclipse/IntelliJ IDEA, MySQL Workbench

---

## 🎯 Installation Guide

### Step 1: Clone the Repository
git clone https://github.com/yourusername/digital-bus-pass.git
cd digital-bus-pass

### Step 2: Configure Database
Create a MySQL database:
CREATE DATABASE bus_pass_system;
Import the provided bus_pass_system.sql file.
Update dbconfig.jsp with your database credentials:

<%! 
String DB_URL = "jdbc:mysql://localhost:3306/bus_pass_system";
String DB_USER = "root";
String DB_PASS = "yourpassword";
%>

### Step 3: Deploy on Tomcat
Copy the project folder to webapps directory of Apache Tomcat.
Start Tomcat server.
Access the app at:
http://localhost:8080/digital-bus-pass

