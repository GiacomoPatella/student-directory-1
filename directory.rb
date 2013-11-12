# let's put all the students into an array
students = [
	["Kennerdeigh", :november],
	["Anath", :november],
	["Jean-Baptiste", :november],
	["Erica", :november],
	["Georgi", :november],
	["Nicki", :november],
	["Chris", :november],
	["Kumy", :november],
	["Lara", :november],
	["James", :november],
	["Asta", :november],
	["Hannah", :novemebr],
	["Simon", :november],
	["Gianni", :november],
	["Tom Groombridge", :november],
	["Tom Shacham ", :november],
	["Jeremy", :november],
	["Michael", :november],
	["Bruce", :november],
	["James", :november],
	["Giacomo", :november],
	["Nisar", :november],
	["Peter", :november],
]

# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end

def print(students)
	students.each do |student|
	puts "#{student[0]} (#{student[1]} cohort)"
end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
