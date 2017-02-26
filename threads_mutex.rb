count1 = count2 = 0
difference = 0
semaphore = Mutex.new

counter = Thread.new do 
	loop do
		semaphore.synchronize{
		count1+=1
		count2+=1	
		}
		
	end
end
spy = Thread.new do 
	loop do
		semaphore.synchronize{
		difference += (count1-count2).abs	
		}
		
	end
end

sleep 3
puts "-------------- using Mutex -----------------------"

puts "Count1 (Before Mutex Lock)=  #{count1}"
puts "Count2 (Before Mutex Lock)=  #{count2}\n\n"
semaphore.lock
puts "Count1 (After Mutex Lock)=  #{count1}"
puts "Count2 (After Mutex Lock)=  #{count2}"
puts "Difference =  #{difference}"
