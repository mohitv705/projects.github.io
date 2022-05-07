#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe
print("content-type:text/html\r\n\r\n")
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
cur.execute("select * from comp")
t=cur.fetchall()
print("""
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("sh.jpg");

  min-height: 770px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  top: 4%;
  left: 38%;
  max-width: 400px;
  padding: 18px;
  background-color: white;
  
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
<style>
table {
  border-collapse: collapse;    
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
tr:nth-child(odd){background-color: #ffffcc}
th:nth-child(even){background-color: #ffffff}
th:nth-child(odd){background-color: #ffffff}
</style>
</head>
<body>
<div class="bg-img">
<h2 style="background-color:LightGray;"><center>Complaints</center></h2>

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>Complaint Id</th>
      <th>Date</th>
      <th>Issue</th>
      <th>Restaurant Name</th>
      <th>Phone Number</th>
      <th>Email-Id</th>
    
      
    </tr>
    </div>
""")
for i in t:
    print(
    """<tr><td>%d</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>"""%(i[0],i[1],i[2],i[3],i[4],i[5]))
print("""
</table>
</body>
</html>
""")