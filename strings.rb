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

puts "---------------------concate using << -------------------------"
puts "str1 << 65 => #{str1<<65}"    #str << obj concate the obj to str1, if obj is in 0..255 obj is converted to ASCII 
puts "str1 << str2 => #{str1<<str2}"

puts "---------------------case-sensitive comparision using <=> -------------------------"
str1 = "Ruby"
puts "str1 <=> str2 => #{str1 <=> str2}"    # compares two strings and returns 1,-1 or 0 ( case sensitive)
puts "str2 <=> str1 => #{str2 <=> str1}"
puts "str1 <=> ruby => #{str1 <=> "ruby"}"
puts "str1 <=> Ruby => #{str1 <=> "Ruby"}"

puts "-------------------string equality using == ---------------------------"
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

puts "----------------------------------------------"
str1 = "this is ruby ruby"
puts "#{str1.count("r")}"                 # gives the count of given character in string
puts "#{str1.count("ruby")}"              # gives the intersection of set of character in string

puts "----------------------------------------------"
puts "#{str1.crypt("12")}"                # Applies one-way cryptographic hash to str.... hash must be 2 char long

puts "----------------------------------------------"
puts "source string : #{str1}"
puts "Result of delete : #{str1.delete("ru")}"         # returns a copy of string by deleting given set of char from the source string
puts "source string after delete :#{str1}"             # source string is not changed

puts "Result of delete! : #{str1.delete!("ru")}"       # same as delete but changes are in place
puts "Source string after delete! :#{str1}"            # source string is changed

puts "----------------------------------------------"
str1 = "this is ruby\nthis is ruby\nruby"
count = 0
puts "#{str1.each_byte {|ch| count+=1}}"           # seperates each byte of given string and passes it to block
puts "No of bytes in string are : #{count}"

puts "----------------------------------------------"
count = 0
puts "#{str1.each_line {|ch| count+=1}}"            # seperates each line and passes it to block provided
puts "No of lines in string are : #{count}"

puts "----------------- str.empty?() ------------------------"
puts "\"\".empty? => #{"".empty?}"              # returns true when string is empty

puts "\" \".empty? => #{" ".empty?}"            # string contains only space is not treated as empty string 

puts "-------------string equality using eql?() ---------------------------------"
puts "#{"Ruby".eql?("Ruby")}"                   # returns true when two strings are equal in length & content
puts "#{"Ruby".eql?("ruby")}"                   # return false.... comparision is case-sensitive
puts "#{"Ruby".eql?("Ruby ")}"                  # return false... same content but length is diff. bcoz of space



puts "-------------string find pattern & replace using gsub() ---------------------------------"
str1 = "This is ruby. i like ruby."

puts "#{str1.gsub("ruby","RUBY")}"     # returns a copy of string by replacing the pattern with replacement


puts "#{str1.gsub("ruby") {|ch| 
	i="RAILS"
	j = "perl"}}" # pattern will be replace by value of block. in this case "perl"

puts "----------------------------------------------"
str1 ="this is 300 200 number"
puts "str1[0] => #{str1[0]}"
puts "str[0,3] => #{str1[0,3]}"    # str[begin,end] returns a substring starts at begin upto end-1
puts "str[0..3] =. #{str1[0..3]}"
puts "result: #{str1[/[0-9]+/]}"    #returns the matched part of string with regular expression

puts "----------------------------------------------"
puts "0ayyyy.hex => #{"0ayyyy".hex}"             # treat first 2 cchar as HEX number and return its decimal equivalent

puts "----------------------------------------------"
puts "#{str1.include? "number"}"      # returns true if str1 contains "number"
puts "#{str1.include? "Number"}"      # return false... its case sensitive search

puts "#{str1.include? 'r'}"

puts "----------------------------------------------"


