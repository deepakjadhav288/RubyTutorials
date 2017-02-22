
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

File.delete("new_test.txt") #--------> deleting file 

