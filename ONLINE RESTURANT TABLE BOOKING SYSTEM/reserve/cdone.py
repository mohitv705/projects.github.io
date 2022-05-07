#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe 
import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
tid=int(f.getvalue('tid'))
cur.execute("select * from tablec where tid=%d"%(tid))
r=cur.fetchone()
print("""
<html>
<html>
<head>
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
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
</style>
</head>
<body>
<div class="bg-img">
<form method="post" action="cconfirm.py">
<input type="hidden" name="id" value="%d">
<input type="hidden" name="a1" value="%s">
<input type="hidden" name="a2" value="%s">
<input type="hidden" name="a3" value="%s">
<input type="hidden" name="a4" value="%s">
<input type="hidden" name="a5" value="%s">
<input type="submit" class="button" value="Confirm">
</form>
</div>
</body>
</html>
"""%(r[0],r[1],r[2],r[3],r[4],r[5]))
