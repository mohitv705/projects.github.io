#!C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe
import cgi
import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="",db="reserve")
cur=db.cursor()
f=cgi.FieldStorage()
a=int(f.getvalue('id'))
b=f.getvalue('a1')
c=f.getvalue('a2')
d=f.getvalue('a3')
e=f.getvalue('a4')   
g=f.getvalue('a5')
r="Friends Of Pho - Asian Fine Dining Club"
cur.execute("insert into cond (tid,day,people,time,email,phno) values('%d','%s','%s','%s','%s','%s')"%(a,b,c,d,e,g))
cur.execute("insert into bs (tid,day,people,time,email,phno,rname) values('%d','%s','%s','%s','%s','%s','%s')"%(a,b,c,d,e,g,r))
cur.execute("insert into st (tid,day,people,time,email,phno,rname) values('%d','%s','%s','%s','%s','%s','%s')"%(a,b,c,d,e,g,r))
cur.execute("delete from tabled where tid=%d"%(a))
db.commit()
db.close()
print("location:dreq.py?msg=done\r\n\r\n")