# ------------- demo of block ------------------
puts "\n ------Demo of blocks without parameter--------\n\n"
def test1
	puts "You are in Method"	
	yield
	puts "You are in Method again"
	yield
	puts "You are in Method again"
end
test1 {
	puts "You are in Block"
	puts "	statement 1"
	puts "	statement 2"
	}

# ------------- demo of block with parameters------------------
puts "\n ------------Blocks with parameter-------------- \n\n"
def test2(var1)
	puts "You are in Method...\n value of parameter to method is : #{var1}"
	yield 5,"string"
end
test2(1000) {|i,j| puts "You are in block...\n value of parameters to block is : i = #{i}	j = #{j}"}

# ------------- passing block as a parameter to method------------------
puts "\n ------------Blocks as a parameter to method-------------- \n\n"
def test3(&block)
	block.call 5
end
test3 {|i| puts "This is block.... value of parameter to block is : #{i}"}




# ------------- demo of block using begin & end------------------





