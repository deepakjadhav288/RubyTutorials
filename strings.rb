# ---------- downcase --------------------
str = String.new("THIS IS RUBY")
result = str.downcase
puts "#{result}"

str1 = "Ruby"
str2 = "language"
puts "----------------------------------------------"
puts "str1 * 4 => #{str1*4}"           # creates a string by repeating str1 4 times
puts "----------------------------------------------"

puts "str1 + str2 => #{str1+str2}"  # concate two strings

puts "----------------------------------------------"
puts "str1 << 65 => #{str1<<65}"    #str << obj concate the obj to str1, if obj is in 0..255 obj is converted to ASCII 
puts "str1 << str2 => #{str1<<str2}"

puts "----------------------------------------------"
str1 = "Ruby"
puts "str1 <=> str2 => #{str1 <=> str2}"    # compares two strings and returns 1,-1 or 0 ( case sensitive)
puts "str2 <=> str1 => #{str2 <=> str1}"
puts "str1 <=> ruby => #{str1 <=> "ruby"}"
puts "str1 <=> Ruby => #{str1 <=> "Ruby"}"

puts "----------------------------------------------"
puts "str1 == str2 => #{str1 == str2}"  # compare str1 & str2 for equality, if type & value are equal return TRUE
puts "str1 == str1 => #{str1 == str1}"

puts "----------------------------------------------"
str1 = "this is ruby"
puts "str1.capitalize => #{str1.capitalize}"
puts "str.capitalize => #{"this is ruby".capitalize!}" # same as above but changes are made in place

puts "----------------------------------------------"
puts "Ruby.casecmp(ruby) => #{"RUBY".casecmp("ruby")}" # case-insensitive comparision, return 0 for equal


puts "----------------------------------------------"
puts "this is ruby.chop => #{str1.chop}"    # removes the last character of string 
puts "this is ruby.chop! => #{str1.chop!}"  # same as above but changes are made in place