<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>RCP - Employee Management App</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background: #f4f9fb;
      color: #333;
      margin: 0;
      padding: 20px;
    }
    h1, h2 {
      color: #1c7ed6;
    }
    code {
      background: #e9ecef;
      padding: 2px 5px;
      border-radius: 3px;
      font-family: monospace;
    }
    pre {
      background: #f1f3f5;
      padding: 10px;
      border-radius: 5px;
      overflow-x: auto;
    }
    .container {
      max-width: 900px;
      margin: auto;
      background: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    ul {
      margin-top: 0;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>📱 RCP - Employee Management App</h1>
    <p><strong>RCP</strong> is a Flutter mobile application designed to manage employee data easily and efficiently. It allows users to add, edit, delete, download, and recover employee records using a clean and intuitive interface.</p>

    <h2>🚀 Features</h2>
    <ul>
      <li><strong>Login Screen:</strong> Enter first and last name to access the dashboard.</li>
      <li><strong>Employee Dashboard:</strong> View and manage the list of employees (name, email, phone, position, salary).</li>
      <li><strong>Add Employee:</strong> Add new employees using a simple form.</li>
      <li><strong>Download Details:</strong> View full details of an employee and download their information.</li>
      <li><strong>Recycle Bin:</strong> Recover deleted employees or permanently remove them.</li>
    </ul>

    <h2>🧰 Technologies Used</h2>
    <ul>
      <li><strong>Flutter</strong> – For building cross-platform mobile UIs</li>
      <li><strong>Hive</strong> – Lightweight and fast NoSQL database for local data storage</li>
      <li><strong>Dart</strong> – Programming language used with Flutter</li>
    </ul>

    <h2>🛠 Installation</h2>
    <pre><code>git clone https://github.com/yourusername/rcp-employee-management.git
cd rcp-employee-management
flutter pub get
flutter run</code></pre>

    <h2>📄 Screens Overview</h2>
    <ul>
      <li><strong>Splash Screen</strong> – Displays RCP logo</li>
      <li><strong>Login Page</strong> – User enters name to access the app</li>
      <li><strong>Main Dashboard</strong> – Lists all employees with basic info</li>
      <li><strong>Add Employee</strong> – Form to enter new employee details</li>
      <li><strong>Download Details</strong> – View and export employee data</li>
      <li><strong>Recycle Bin</strong> – View and restore deleted records</li>
    </ul>

    <h2>📄 License</h2>
    <p>This project is licensed under the MIT License.</p>

    <h2>👤 Author</h2>
    <p><strong>ISSOFA NJUTAPMVOUI</strong><br/>
    Developed as a modern mobile tool for managing and storing employee data efficiently with Hive and Flutter.</p>
  </div>
</body>
</html>

