require 'prime'
def prime n
	Prime.prime? n
end
def palindrome n
	(n.to_s == n.to_s.reverse)? :true :false
end
power_array = -> (size) do
    p 2.upto(Float::INFINITY).lazy.select{ |x| x if prime(x) && palindrome(x) }.first(size)
end
power_array.(5)
power_array.(15)
