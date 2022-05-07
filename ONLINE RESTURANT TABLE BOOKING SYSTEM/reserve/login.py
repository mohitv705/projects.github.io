#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe

import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
a=f.getvalue('a1')
b=f.getvalue('a2')
cur.execute("select * from log")
q=cur.fetchall()
y=0
for i in q:
    if i[0]==a and i[1]==b:
         y=1
         break

    else:
         y=0
       
if y==1:
        print("location:userpanel.html?msg=done?id=a\r\n\r\n")
else:
        print("location:login.html?msg=done\r\n\r\n")
