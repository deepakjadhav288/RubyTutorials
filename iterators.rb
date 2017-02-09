# -------------- Ruby Iterators  -------------------------
=begin
	Iterators are nothing but methods suppoerted by Collections. 
	Objects that store group of data members are called collection. Array and hashes can be termed as collection.	
	each and collect are the examples of Iterators.	
=end
puts "------ each iterator --------------"
arr = Array[1,2,3,4,5]
arr.each do |n|
	puts n
end

puts "\n\n----- collect iterator --------------"
collect_nos = Array.new

collect_nos = arr.collect {|n| n*10}
puts collect_nos