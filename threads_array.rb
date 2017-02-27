[
	Thread.new {Thread.current[:name] = "A";sleep 1},
	Thread.new {
		Thread.current["name"] = "B"
		loop do
		end
		},
	Thread.new {Thread.current[:name] = "C"}
].each do |th|
	puts "#{th.inspect} = #{th[:name]}"
end
sleep 3


