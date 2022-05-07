#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe
import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
t=cgi.FieldStorage()
a=t.getvalue('a1')
b=t.getvalue('a2')
c=t.getvalue('a3')
d=t.getvalue('a4')
e=t.getvalue('a5')
cur.execute("insert into user (name,addr,phno,email,pwd) values('%s','%s','%s','%s','%s')"%(a,b,c,d,e))
cur.execute("insert into log (email,pwd) values('%s','%s')"%(d,e))
db.commit()
print("location:sr.html?msg=done\r\n\r\n")