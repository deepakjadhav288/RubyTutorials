
puts "The pattern is: /cat[1-9]+/ "

line1 = "cat123 is a string"


if line1 =~ /cat[1-9]+/
	puts "found pattern"
else
	puts "wrong pattern"
end

m1 = /ruby/.match("this is ruby")

puts m1.class						# returns "MatchData" if match found otherise returns "NilClass"

puts m1

m2  = "this is ruby"=~ /ruby/
puts m2							# returns 8... position in string where the match found


puts " -------------- match method domo ------------------------\n\n"
line2 = "my phone number is: (123) 5544-11234"
exp = /\((\d{3})\)\s+(\d{4})-(\d{5})/
m3 = exp.match(line2)

puts m3[0]   #----------- returns whole matched string 

3.times do |i|
	puts "Match #{i+1}  : #{m3.captures[i]}"  #------------- returns each match seperately
end


#----------------- BACK REFERENCE --------------------------
puts "---------- BACK REFERENCE -------------------"
puts "#{/([Rr])uby & \1ails/.match("Ruby & Rails")}"
puts "#{/([Rr])ub([ey]) & \1ub\2/.match("ruby & ruby")}"   #---- \1 matches whatever first group matches & /2 match second group


# ====== /(?:[Rr])ub([ey]) & \1ub\2/.match("ruby & ruby" ==> Error: (?:[Rr]) will not create a back reference 

#---------- ANCHORS -------------------------------
puts "---------- SPECIAL SYNTAXES ------------"

puts "Comments :  #{/^R(?#comment)uby/.match("Ruby is ruby")}"
puts "case insensitive : #{/R(?i)uby/.match("Ruby")}"  # ---- /R(?i:uby)/ also generate the same result