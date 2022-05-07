#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe 

import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
id=f.getvalue('a1')
cur.execute("select * from bs where phno=%s"%(id))
r=cur.fetchall()not working
print("""
<html>
<body>
<form method="post" action="editcode.py">
<input type="text" name="id" value="%d">
<input type="text" name="a1" value="%s">
<input type="text" name="a2" value="%s">
<input type="text" name="a3" value="%s">
<input type="text" name="a4" value="%s">
<input type="text" name="a5" value="%s">


<input type="submit" >
</form>
</body>
</html>
"""%(r[0],r[1],r[2],r[3],r[4],r[5]))
