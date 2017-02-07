# ------------- including module in a perticular class -----------------
$LOAD_PATH << "."
require "shapes"
class Test
	include CIRCLE					# module CIRCLE & RECTANGLE are included only in class Test
	include RECTANGLE
	def invoke_module_method
		CIRCLE.area(10)
		RECTANGLE.area(10,20)
	end		
end
t1 = Test.new
t1.invoke_module_method