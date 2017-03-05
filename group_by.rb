def group_by_marks(marks, pass_marks)
  # your code here
    marks.group_by do |stud, marks|
    	if marks>30  
    		"Passed" 
    	else
    		"Failed"
    	end
    end
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
p group_by_marks marks, 30
puts "\n"
