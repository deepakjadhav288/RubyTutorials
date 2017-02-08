# ---------- CREATING ARRAYS ----------------------
names = Array.new
numbers = Array.new(5)

puts "size of array names is :#{names.size}"
puts "size of array numbers is : #{numbers.length}"

# ------- ASSIGNING VALUE TO EACH ELEMENT / INITIALIZATION OF ARRAY ------------------------

emp_names = Array.new(4,"Jack")             # Method 1
puts "#{emp_names}"

square_table = Array.new(11) {|n| n = n*n}   # populating each element with what the block evaluates to...# Method 2
puts "SQUARE TABLE OF 0..10 \n #{square_table}"


first_five = Array.[](1,2,3,4,5)         # Method 3
puts "FIRST FIVE"
puts first_five


first_three = Array[1,2,3]                # Method 4
puts "FIRST THREE : #{first_three}"

digits =  Array(0..9)                     # Method 5
puts "DIGITS :\n#{digits}"


common = first_three & first_five
puts "Common : #{common}"

puts "#{common * 2}"
puts "#{first_five * "DJ"}"

puts "#{first_five+first_three}"
puts "#{first_five-first_three}"
puts "#{first_five|digits}"
puts "#{first_three<<45<<"Ruby"}"

puts "#{first_three<=>first_three}"
puts "#{first_three<=>first_five}"
puts "#{first_five<=>first_three}"

puts "#{digits[2,6]}"
puts "#{digits[2..6]}"

puts "#{digits.slice(-1)}"
puts "#{digits.slice(-10,3)}"
puts "#{digits.slice(0..5)}"


puts "#{digits[0,3]=100,100,100}"
puts "#{digits}"

puts "#{digits[0,2]=nil,nil,nil,nil}"
puts "#{digits}" 


#--------------------- array.abbrev --------------------------
require 'abbrev'
puts "#{["car","cone"].abbrev}"

puts "\n\n#{["fa11st","bo22at"].abbrev(/[0-9]a/)}\n\n"


#---------------------- array.assoc --------------------------
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = ["foo"]
s4 = ["foo","DJ"]
s5 = "foo"
a  = [ s1, s2, s4, s3, s5]

puts "#{a.assoc("letters")}"  #=> [ "letters", "a", "b", "c" ]
puts "#{a.assoc("foo")}"      #=> nil

#---------------------------------------------------------------

puts "#{s1.clear}" # removes all elements of an array

#--------------- collect / map -------------------
alphabet = ["a","b","c","d"]
puts "#{alphabet.collect {|ch| ch + "!"}}"  # create a copy
puts "#{alphabet}"

puts "\n\n#{alphabet.map! {|ch| ch + "!"}}"   # in place
puts "#{alphabet}"


puts "array.pop => #{alphabet.pop}"

puts "array befor push :#{alphabet}"
puts "#{alphabet.push("RUBY")}"

puts "array before reverse :#{alphabet}"
puts "#{alphabet.reverse}"