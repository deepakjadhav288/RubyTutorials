a = 2
b = 4
puts "ARITHMETIC OPERATORS\n\n"
puts "Addition : #{a+b}"
puts "Subtraction : #{a-b}"
puts "Multiplication : #{a*b}"
puts "Division : #{b/a}"
puts "modulus : #{a%b}"
puts "Exponent : #{a**b}"

puts "\nCOMPARISION OPERATORS \n\n"
puts "equal to (==)  : #{a==b}"
puts "Not equal to (!=) : #{a!=b}"
puts "Greater than (>) : #{a>b}"
puts "Less than (<) : #{a<b}"
puts "Greater than equal to (>=) : #{a>=b}"
puts "Less than equal to (<=) : #{a<=b}"
puts "Combined Comparision (<=>) : #{a<=>b}"
puts "within equality ((1...10)===5) : #{(1...10)===5}"
puts ".eql? operator (1.eql? 1.0) : #{1.eql?1.0}"

puts "\n RUBY PARALLEL ASSIGNMENT OPERATORS\n\n"
puts "a=#{a}  b=#{b}"
a,b = b,a
puts "a=#{a}  b=#{b}"
a,b = b,a

foo =42
puts "#{defined?foo}"    # local variable
puts "#{defined?$_}"     # global variable
puts "#{defined?baar}"   # nothing will be displayed
puts "#{defined?puts}"   # method 