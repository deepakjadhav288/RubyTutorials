# while loop
a=1
while a<5 do 
	b=1
	while b<=a do 
		print b,"\t"
		b +=1
	end
	a +=1
	print "\n"
end
# --------------------while modifier-------------------
a=1
a +=1 while a<5
print "value of a after while modifier : ",a,"\n"

# ---------------while modifier with begin and end----------------
puts " \n\noutput of while modifier with begin & end"
a=1
begin
	puts "#{a}"
	a +=1
end while a<5

# -------------------------until statement-----------------------------
puts " output of until statement"
a=1
until a>5 do
	puts "#{a}"
	a +=1
end


# ------------------------ruby for statement ------------------------------

puts " output of for statement\n\n"
for i in 0..5
	puts "#{i}"
end

# ---------------------- break statement -----------------------
puts " output of break statement"
for i in 0..5
	if i==3
		break
	end
	puts "#{i}"
end
# ------------------------- next statement ---------------------
puts " output of next statement"

for i in 0..5
	if i==3
		next
	end
	puts "#{i}"
end

