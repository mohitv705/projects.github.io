#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe
import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
tid=int(f.getvalue('tid'))
cur.execute("delete from tabled where tid=%d"%(tid))
cur.execute("delete from st")
db.commit()
print("location:dreq.py?msg=done\r\n\r\n")