# ---------- Methods to create HASH --------------
#months  = Hash.new
#marks = Hash.new("no marks")
#days = Hash.new "no days"

#days = Hash["0" => Sunday,"1" => Monday,"2" => Tuesday,"3" => wednesday,"4" => Thursday,"5" => Friday,"6" => Saturday]

days = Hash[0 => "Sun",1 => "Mon",2 => "Tue",3 => "wed",4 => "Thu",5 => "Fri",6 => "Sat",]

puts days
	
puts "\n\nkeys :#{days.keys}\n\n"
puts "values :#{days.values}\n\n"

puts "------Add element at end------------ "
days[7] = "No day"
puts "#{days.values}"

puts "\n\n----------deleting element----------"
days.delete(7)
puts "#{days.values}\n\n"

days.default = "No day"
puts "default :#{days[12]}"

puts "--------- inspect method-------------"
puts "#{days.inspect}\n\n"


copy_days = days.invert

puts "#{copy_days}"
puts "#{copy_days.keys}"


puts "#{days.sort}" 
# we can use any object of Ruby as key or value
#h = Hash["January"=>[1,"Jan"]]
#puts "#{h["January"]}"

