class Fixnum
	alias old_plus +
	# Redefine addition of Fixnums. This
	# is a BAD IDEA!
	def +(other)
		old_plus(other).succ
	end
end
puts "1+2 :#{1+2}"
puts "2+3 :#{2+3}"
a= 4
p a+a+a 
print `date`
puts `ls`.split[1]
puts %x{echo "Hello there"}

