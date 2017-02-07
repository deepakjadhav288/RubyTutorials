class Customer
	@@no_of_customers = 0;		#class variable 

	def initialize(id,cust_name,addr)
		@cust_name = cust_name     #cust_name is instance variable
		@cust_id = id   			#cust_id is instance variable
		@cust_addr = addr           #cust_addr is instance variable
	end
	def display_details
		puts " Customer id =#{@cust_id}"
		puts " Customer name = #{@cust_name}"
		puts " Customer address = #{@cust_addr}"
	end
	def total_no_of_customer()
		@@no_of_customers += 1
		puts "Total no of customers = #{@@no_of_customers}"
	end
end

cust1 = Customer.new("1","Deepak","pune")
cust2 = Customer.new("2","Jadhav","Mumbai")
cust1.display_details
cust1.total_no_of_customer

cust2.display_details()
cust2.total_no_of_customer()


#obj = SAMPLE.new
#obj.hello
