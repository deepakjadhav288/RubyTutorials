require 'test/unit'

class List 
	def initialize
		@elements = Array.new
	end
	def add_first(e)
		@elements.push(e)
		self
	end
	def [](index)
		@elements[index]
	end
	def show
		p @elements
	end

end



class ListTest < Test::Unit::TestCase
	def test_delete
		list = List.new
		list.add_first(10).add_first(200).add_first(20).add_first(30)
		list.show		
	end
end





