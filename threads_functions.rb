count = 0
def func1
	a = Thread.new {
		a[:Myself] = "me"
		puts "==========Passing execution to Thread b======="
		Thread.pass
		puts "========== return from thread b =============="
		puts "a.key = #{a.key?(:Myself)}"
		puts "a.Myself  : #{a[:Myself]}"
		puts "a is alive : #{a.alive?}"
		
		
		puts "main thread :#{Thread.main}"
		
		puts "a"
		
	}


end
b = Thread.new do 
	puts "************ b"
	puts "************ b.key = #{b.key?("b")}"
end 

func1


sleep 1
	