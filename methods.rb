# ------------ simple method with no arguments ---------------
puts "----------O/P : Method with no arguments----------------\n"

def say_hello
	puts "hello, world...!!!"	
end
say_hello


# -------------- method with arguments ----------------------
puts "\n-----------O/P : Method with arguments-------------------\n"

def say_language(lang1,lang2)
	puts "The programming language is #{lang1}"
	puts "The programming language is #{lang2}"
end
say_language("C","CPP")

# ---------------- method with default arguments ----------------
puts "\n---------O/P : Method with default arguments---------------------\n"

def say_language_default(lang1="RUBY",lang2="HTML")
	puts "The programming language is #{lang1}"
	puts "The programming language is #{lang2}"
end
say_language_default "C","CPP"       # lang1 and lang2 assigned with the arguments passed
say_language_default                 # lang1 and lang2 uses the default values


=begin
 ------------- method returning values ------------------------
               Every method in RUBY returns a value by default. 
               This value will be the value of the last statement.
=end

puts "\n---------O/P : Method with returning default values---------------------\n"
def test1
	i = 10
	j = 20
	k = 30
end
var1 = test1
puts "Default value returned by function : #{var1}"


puts "\n---------O/P : Method with returning values (more than 1 value) ----------\n"
def test2
	i = 10
	j = "string"
	k = 30.15
	return i,j,k
end
var2 = test2
puts "Values returned by function :#{var2}"

# ------------------- Mehtod with varible no of arguments ------------------------
puts "\n---------O/P : Method with varibla no of parameters----------\n"
def test3(*arg)
	puts " The number of parameters are : #{arg.length}"
	for i in 0...arg.length
		puts "The parameter(#{i+1}) is : #{arg[i]}"
	end
end
test3 "C","CPP","RUBY"


#------------- creating alias for method variables ------------------
puts "\n---------O/P : Aliases for Method and global variables----------\n"

$global_var = 100

alias alias_say_hello say_hello
alias $alias_global_var $global_var
alias_say_hello
puts "#{$alias_global_var}=#{$global_var}"


# ---------------- undefining a method using undef --------------------------

undef say_hello  # now method say_hello() is undefined.... we cant call this method onwards

