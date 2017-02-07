array = ["Deepak",20,3.34,"pune"]

puts "Array accessed with loop"
array.each do |i|
	puts "    #{i}"
end
puts "Array accessed without loop"
puts "----#{array[0]}"
puts "----#{array[1]+1}"
puts "----#{array[2]}"
puts "----#{array[3]}"


arr1 = [1,2,3,4,5]
sum = 0
arr1.each do |i|
	sum = sum + i
end
puts "sum = #{sum}"
