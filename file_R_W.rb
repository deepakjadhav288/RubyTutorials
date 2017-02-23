
#----------- FILE READING & WRITING USING SYSREAD() AND SYSWRITE() --------------

aFile = File.new("test.txt","w")

if aFile
	aFile.syswrite("This is a test file data")
	else
		puts "unable to open file..."
end
aFile.close
aFile = File.new("test.txt","r")
if aFile
	content = aFile.sysread(20)
	puts content
	else
		puts "unable to open file..."
end
aFile.close
#-------------- READING FILE BYTE BY BYTE ----------------
puts "\n\n---------------Reading file using each_byte()--------\n\n"
aFile = File.new("test.txt","r")
aFile.each_byte {|ch| putc ch; print "."}
puts "\n"

#------------- READING A FILE USING IO.readlines() --------------------------

aFile = File.new("test.txt","r+")
if aFile
	aFile.syswrite("This is ruby language \n This is file handling program\n This is end of File")

	else
		puts "unable to open file..."
end
aFile.close

puts "\n----------- READING FILE USING IO.readlines() --------------\n\n"
arr = IO.readlines("test.txt") #--------- returns file data in array line by line. each line becomes an element of array
arr.each do |line|
	puts line
end	


#-------------------- READING FILE USING IO.foreach() METHOD -------------------
puts "\n------ READING FILE USING IO.foreach() ---------------\n\n"
IO.foreach("test.txt") {|line| puts line}


#------------------ RENAMING AND DELETING FILES ----------------------
puts "\n-----READING RENAMED FILE ---------------\n\n"
File.rename("test.txt","new_test.txt")
aFile = File.new("new_test.txt","r")
aFile.each_byte {|ch| putc ch}
puts "\n"
aFile.close
File.delete("new_test.txt") #--------> deleting file 

#----------- CHANGING FILE MODES AND OWNERSHIPS ------------------
puts " ------------ CHANGING FILE MODES AND OWNERSHIPS --------"
aFile = File.new("test1.txt","w")
aFile.chmod(0711)

aFile.syswrite("writing to file by changing mode from read to write")
aFile.close

#------------ FILE OPENING USING OPEN METHOD ----------------------------
puts " ----------- file inquiries ----------------"

puts "test exists? ===>#{File.exists?("test.txt")}"
puts "test1 exists? ===> #{File.exists?("test1.txt")}"

puts "test1.txt is a file? ===> #{File.file?("test1.txt")}"
puts "test.txt is a file? ===> #{File.file?("test.txt")}"

puts "test1 is directory? ===> #{File::directory?("test1.txt")}"


puts "test1 is readable? ===> #{File.readable?("test1.txt")}"
puts "test1 is writable? ===> #{File.writable?("test1.txt")}"
puts "test1 is executable? ===> #{File.executable?("test1.txt")}"

puts "test1 size zero? ===> #{File.zero?("test1.txt")}"
puts "test1 size ====> #{File.size?("test1.txt")}"

puts "test1 type ===> #{File::ftype("test1.txt")}"

puts "test1.txt : created time ===>#{File::ctime("test1.txt")}"
puts "test1.txt : last aaccessed time ===> #{File::atime("test1.txt")}"
puts "test1.txt : modified time ===> #{File::mtime("test1.txt")}"

Dir.mkdir("created dir")
pause = gets
Dir.delete("created dir")