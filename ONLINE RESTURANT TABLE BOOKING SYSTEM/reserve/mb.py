#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe
print("content-type:text/html\r\n\r\n")
import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
p=f.getvalue('a1')
cur.execute("select * from bs where phno=%s"%(p))
t=cur.fetchall()
print("""
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;    
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
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
<h2 style="background-color:LightGray;"><a href="userpanel.html">Back</a><center>Booking Details</center></h2>


<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>Table Number</th>
      <th>Restaurant Name</th>
      <th>Date</th>
      <th>Guests</th>
      <th>Time</th>
      <th>Email-Id</th>
      <th>Phone Number</th>
      
      
    </tr>
      </div>
""")
for i in t:
    print(
    """<tr><td>%d</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>"""%(i[0],i[6],i[1],i[2],i[3],i[4],i[5]))
print("""
</table>
</body>
</html>
""")