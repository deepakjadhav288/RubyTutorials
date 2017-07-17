

require 'pg'
class Postgres_DB
	def initialize
		@conn = PG.connect("localhost",5432,"","","sample","postgres","deepak")
	end

	def select_db(db_name,u_id, pwd)
		@conn = PG.connect("localhost",5432,"","","#{db_name}","#{u_id}","#{pwd}")

	end

	def select_all_records_from tb_name
		col= @conn.exec("select column_name from information_schema.columns where table_name ='#{tb_name}'").values		
		#p col	
		res = @conn.exec("select * from #{tb_name}")
		res.each {|row| 0.upto(col.length-1) {|index| print row[col[index][0]],"	"};puts "" }
	end
	
	def add_row tb_name,tuple
		@conn.exec("insert into #{tb_name} values(#{tuple})")
		
	end
	def create_new_table tb_name,cols
		@conn.exec("create table #{tb_name} (#{cols}) " )
		
	end
	def close 
		@conn.close
	end
	def prepare_user_statement roll,name
		@conn.prepare('statement','insert into student(roll,name) values ($1,$2)')
		@conn.exec_prepared('statement',[roll,name])
		
	end
end
p1 = Postgres_DB.new

loop {

	puts"1. Select DB\n2. Create Table\n3. Insert Row\n4. Display All Records\n5. Close\nEnter your choice:"
	input = gets.to_i
	case input
	when 1		
		print "enter database user_id password :"
		p1.select_db(gets.to_s.chomp!,gets.to_s.chomp!,gets.to_s.chomp!)
		puts "database is selected...."		
		puts "------------------------------------------------\n\n"
	when 2
		print "enter table name :  "
		tb = gets.to_s.chomp!
		print "enter fields of table (col_name1 datatype,col_name2 datatype) :"
		cols = gets.to_s.chomp!
		p1.create_new_table(tb,cols)

		puts "new table '#{tb}' is created..."
	when 3
		print "enter table naem and tuple(value1,value2,'string', ...)"
		p1.add_row gets.to_s.chomp!,gets.to_s.chomp!
		puts "1 row inserted ....."
		puts "-----------------------------------------------\n\n"
	when 4
		print "enter table name :  "		
		p1.select_all_records_from gets.to_s.chomp!
		puts "-----------------------------------------------\n\n"
	when 5 
		puts "close"
		break
	end
}











