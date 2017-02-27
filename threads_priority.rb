count1 = count2 = 0
t1 = Thread.new do
	
	loop {puts "T1----"}
end
t2 = Thread.new do 
	loop {puts "T2"}
	
end
t1.priority = 1 
t2.priority = 3

sleep 0.001
