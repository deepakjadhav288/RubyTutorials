count = 0;
arr = []
10.times do |i|
		arr[i]  = Thread.new{		
		sleep(rand(4))
		Thread.current["mycount"] = count
		count+=1		
	}
end
arr.each {|t| t.join;print "T",t["mycount"],"  "}
puts "\ncount = #{count}"