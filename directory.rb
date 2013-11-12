# let's put all the students into an array
students = [
	{:name => "Kennerdeigh", :cohort => :november},
	{:name => "Anath", :cohort => :november},
	{:name => "Jean-Baptiste", :cohort => :november},
	{:name => "Erica", :cohort => :november},
	{:name => "Georgi", :cohort => :november},
	{:name => "Nicki", :cohort => :november},
	{:name => "Chris", :cohort => :november},
	{:name => "Kumy", :cohort => :november},
	{:name => "Lara", :cohort => :november},
	{:name => "James", :cohort => :november},
	{:name => "Asta", :cohort => :november},
	{:name => "Hannah", :cohort => :novemebr},
	{:name => "Simon", :cohort => :november},
	{:name => "Gianni", :cohort => :november},
	{:name => "Tom Groombridge", :cohort => :november},
	{:name => "Tom Shacham ", :cohort => :november},
	{:name => "Jeremy", :cohort => :november},
	{:name => "Michael", :cohort => :november},
	{:name => "Bruce", :cohort => :november},
	{:name => "James", :cohort => :november},
	{:name => "Giacomo", :cohort => :november},
	{:name => "Nisar", :cohort => :november},
	{:name => "Peter", :cohort => :november},
]

# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end

def print(students)
	students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
