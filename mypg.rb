require 'pg'
conn = PGconn.connect("localhost",5432,"","","sample","postgres","deepak")
tb_name = "student"
res = conn.exec("select * from #{tb_name}")
i =0
while i<4
	print res[i]['roll'],"   "
	p res[i]['name']
	i+=1
end

conn.close
