

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

range1 = (1..5).to_a
puts "Range to list : #{range1}"

puts "\n\n(1..10).include?(4)  :  #{(1..10).include?(4)}"
puts "(1..10).min          :  #{(1..10).min}"
puts "(1..10).max          :  #{(1..10).max}"


# ------- hash reject() -----------------------
digits = (0..9)
rejected_nos = digits.reject {|n| n<5}  # reject nos <5 
puts "Rejected Nos (<5) :#{rejected_nos}"

#--------------- Ranges as condition ----------------------
print "Enter marks : "
score =gets.to_i
result = case score
	when 0...40 	
		"Fail"
	when 40...60 
		"second class"
	when 60...75 
		"first class"
	when 75...100 
		"distiction"
	else "invalid score"
end
puts "Grade : #{result}"

# --------------- Range as intervals ---------------------
puts "\n\n----------- Range as intervals --------------"
if ((0..10) === 5)
	puts "5 is in range"
end





