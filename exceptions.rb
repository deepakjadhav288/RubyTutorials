#------------- Exception handling in Ruby ----------------
print "Enter divident : "
first_no = gets.to_i
print "Enter divisor : "
second_no = gets.to_i

begin
	result = first_no/second_no
	#puts "result :#{result}"
rescue
	puts "I am rescued"
	result = STDIN
else 
	puts "Oops.... there is no exception..." # this blocked executed only when exception is not occured
ensure
	puts "Ensured the execution..." # this block always executed regardless of exception occured or not

end
puts "result is : #{result}"

# ------------------- retry ------------------
puts "\n\n ---------------------use of retry statement--------------"
begin
	print "Enter divident : "
	divident = gets.to_i
	print "Enter divisor : "
	divisor = gets.to_i

	quotient = divident/divisor
	puts "quotient is : #{quotient}"

	rescue Exception => e
		puts "Messge :#{e.message}"
		puts "Message :#{e.backtrace.inspect}"
		puts "Erro: #{STDIN}\ndivisor should not be zero. Please enter correct input"
		retry
end

# --------------- Using Raise statement ----------------------------------
=begin 
	different ways of using raise statement:
		raise
		raise "Error message"
		raise ExceptionType, "Error message"
		raise ExceptionType, "Error Message" condition
=end
puts "\n\n----------------- use of raise statement -------------------"
begin 
	puts "I am before the raise"
	raise "An error has occured"
	puts "I am after the raise"
	rescue
		puts "I am rescued"
end
puts "I am out of begin block"


# --------------------- Use of Throw and Catch -----------------------