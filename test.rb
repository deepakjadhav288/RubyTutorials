class Test1
	def print_msg
		puts "i am method of old version"

		
	end
end
t = Test1.new
t2 =t;
puts "========== Demo of open classes ====================="
puts "t.id =#{t.object_id}---t2.id = #{t2.object_id}"

class Test1 
	#----------- open classes demo ---> adding one new method to existing class ------------
	def msg                                         
		puts "i am newly added method"
	end
	
end
t = Test1.new
puts "t.id new version =#{t.object_id}"
t.print_msg
t.msg




class Test2
	def tell_version
		puts "i am old version method"
	end
end
t4 = Test2.new
class Test2
	def tell_version
		puts "i am new version method"
		
	end
end
puts "================= Demo of monkey patching ========================"
t4.tell_version