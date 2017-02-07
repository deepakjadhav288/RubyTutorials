puts "Range with (1..5)"
(1..5).each do |i|
	puts i
end
puts "Range with (1...5)"
(1...5).each do |i|
	puts i
end

puts "Range with ('a'...'d')"
('a'...'d').each do |i|
	puts i
end

puts 'Range with ("aaa"..."aad")'
("aaa"..."aad").each do |i|
	puts i
end


puts "Range with Range.new(1,5)"
arr = Range.new(1,5)
arr.each do |i|
	puts i
end

