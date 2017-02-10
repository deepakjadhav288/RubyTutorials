class Account
	@@acc_count = 0
	attr_accessor :cust_name,:acc_no,:acc_type
	#----------- getter methods (protected) ----------------
	def get_cust_name
		@cust_name
	end
	def get_acc_no
		@acc_no		
	end
	def get_acc_type
		@acc_type		
	end
	#-------------- setter methods (protected) ---------------------
	def set_cust_name(value)
		@cust_name = value.chomp!		
	end
	def set_acc_no
		increment_acc_count
		@acc_no = "SB0000"<<@@acc_count.to_s
	end

	def set_acc_type(value)
		@acc_type = value
	end
	#---------------- instance private method ------------------------
	def increment_acc_count
		@@acc_count+=1
		
	end
	protected :get_cust_name,:get_acc_no,:get_acc_type,:set_cust_name,:set_acc_type,:set_acc_no
	private :increment_acc_count
end
class Saving < Account
	MIN_BALANCE = 1000
	attr_accessor :acc_balance,:interest
	def deposit(amount)
		puts "credited #{amount} to your Account"
	 	@acc_balance +=amount
	end 
	def withdrawal(amount)
		if permit_withdrawal(amount)
			puts "Debited #{amount}"
			@acc_balance -= amount
		else
			puts "Insufficient funds..."
		end
	end

	def permit_withdrawal(amount)
		if @acc_balance-amount>500		
			return true
		else
			return false
		end
	end

	def open_new_acc
		print "Enter Customer Name :"
		set_cust_name(gets.to_s)
		
		puts "Account No :#{set_acc_no}"
		puts "Account Type : #{set_acc_type("Savings")}"		
		@acc_balance = 0
		puts "Balance :#{acc_balance}"
		@interest = 0.0
		puts "Interest : #{@interest}"
	end

	def to_s
		"#{@acc_no}		#{@cust_name}	#{@acc_type}		#{@acc_balance}		#{interest}\n\n"
		
	end

end
index = 0
customers = Array.new(10)
input = 0
while input !=5 do
	puts "\n\n\n"
	puts "1. New Account"
	puts "2. Display All Account"
	puts "3. Withdrawal"
	puts "4. Deposit"
	puts "5. Exit"
	print "Enter your choice :"
	input = gets.to_i
	case input
	when 1
		customers[index] = Saving.allocate
		customers[index].open_new_acc
		index+=1
	when 2
		puts "\nAccount No 	Name 	Type  		Balance 	Interest\n"
		customers.each do |i|
			print i
		end

	when 3
		print "Enter Account no :"
		debit_to = gets.to_i-1
		print "Enter amount to be withdrawal : "
		debit_amount = gets.to_i
		customers[debit_to].withdrawal(debit_amount)
	when 4						
		print "Enter Account No :"
		credit_to = gets.to_i-1
		print "Enter amount to be deposited :"
		credit_amount = gets.to_i
		customers[credit_to].deposit(credit_amount)
	end
end


