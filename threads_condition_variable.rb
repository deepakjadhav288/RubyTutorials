
count=1
sum = 0
sem = Mutex.new
resource = ConditionVariable.new

semaphore = Mutex.new

p1 = Thread.new do 
	sem.synchronize{
		loop do
			if((count%2)==0)
				puts "P1 is waiting"
				resource.wait(sem)
			end
				
			puts "P1 in critical (count=#{count})}\n\n"
			count+=1
			resource.signal
			
		end
	}

end
p2 = Thread.new do 
	sem.synchronize{
		loop do
			if((count%2)!=0)
				puts "P2 is waiting"
				resource.wait(sem)
			end				
			puts "P2 in critical (count=#{count})}\n\n"
			count+=1
			resource.signal
			

		end
	}
end
sleep 0.001
#p1.join
#p2.join


