x = 11
y = 12
if x>y
	puts "x is greater than y"
elsif x<y
	puts "x is smaller than y"
else 
	puts "x is equal to y"
end

a = 12
b = 23
c = 4
if a>b
	if a>c
		puts "a is greater"
	else
		puts "c is greater"
	end
elsif b>c 
		puts "b is greater"
else
		puts "c is greater"

end

# ruby if modifier 

print "debug\n" if 2<3    # executes the code if condition is true

# ruby unless statement
# executes the code condition is false

a=2
b=3
unless a>b
	puts "a is smaller than b"

else
	puts "b is smaller than a"
end

# ruby unless modifier
print "hello\n" unless 2>3  # executes the code if condition is false


# ruby case statement
age = 3
case age
	when 0..2
		puts "baby"
	when 3..6 
		puts "little child"
	when 7..12
		puts "child"
	when 13..18
		puts "youth"
	else
		puts "adult"
end






