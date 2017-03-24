require 'pg'
conn = PG.connect("localhost",5432,"","","sample","postgres","deepak")
conn.exec("insert into student values(4,'deepak')")

puts "1 record added...."
conn.close