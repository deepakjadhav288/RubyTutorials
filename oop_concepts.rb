class Box
	attr_accessor:width, :height
	@@box_count=0

	def initialize(w,h)
		@width,@height = w,h
		@@box_count+=1
		@box_id = @@box_count
	end

	#--------- getter method ---------------
	def get_height
		@height
	end
	def get_width
		@width
	end
	def get_id
		@box_id
	end

	#---------- setter method -------------
	def set_height(value)
		@height = value
	end
	def set_width(value)
		@width = value
	end

	#----------- instance method -----------
	def get_area
		@width*@height
	end

	#----------- class method ---------------
	def self.print_area(obj_list)
		puts "\n\nTotal Boxes created is : #{@@box_count}"
		obj_list.each do |obj|
			puts "Area of box#{obj.get_id} (using class method) : #{obj.get_area}"
		end
	end
	def to_s
		"Width = #{@width}, Height = #{@height}"
	end
end

#-------- creating objects --------------
box1 = Box.new(10,20)                            # initialize object using initialize method
puts "Height of box1 : #{box1.get_height}"       # calling a getter method  
puts "Width of box1  : #{box1.get_width}"

puts "Area of box1   : #{box1.get_area}\n\n"         # calling an instance method

box2 = Box.new(10,30)
box2.set_width(5)
box2.set_height(10)

area = box2.get_area
puts box2
puts "Area of box2 : #{area}\n\n" 

box3 = Box.new(3,3)
puts box3
puts "Area of box3   : #{box3.get_area}\n\n"         # calling an instance method

Box.print_area([box1,box2,box3])


