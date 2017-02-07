#------------ demo of  modules --------------------


$LOAD_PATH << '.'       #search the required files( mentioned in 'require "file_name" ') in current directory
						# if you dont want to use $LOAD_PATH, use require_relative to load file from relative directory

require "shapes.rb"     # .rb is not required. only file name is sufficient
include CIRCLE			# including module CIRCLE
include RECTANGLE		# including module RECTANGLE

puts "value of PI from Module CIRCLE : #{CIRCLE::PI}"    # Using a variable from module CIRCLE
CIRCLE.area 10											 # Invoking a method from module CIRCLE
RECTANGLE.area 10, 20									 # Invoking a method from module RECTANGLE

