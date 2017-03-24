def take_block(p1)
	if block_given?
		yield(p1)
	else
		p1
	end
end
p take_block("no block")
p take_block("no block") {|s| s.sub(/no /, '') }
