#!/usr/bin/env ruby
# Student names & cohort data hashes
def input_students
	# create an empty array
	students = []
	# get the first name
	loop do
		puts "\n"
		puts "=======================================================================".center(150)
		puts "Please enter the name of the student you'd like to add and push return,".center(150)
		puts "or hit enter twice to finish".center(150)
		puts "=======================================================================".center(150)
		name = gets.chomp
		break if name.empty?
		puts "Please enter the cohort month of the student"
		# get the cohort
		cohort = gets.chomp
		break if cohort.empty?
		# while the cohort is not empty, repeat this code
		#add the student hash to the array
		students << { :name => capitalize_all(name), :cohort => cohort.capitalize}
	end
	#return the array of students
	students
end

def capitalize_all(string)
	string.split(' ').map{|word| word.capitalize}.join(' ')
end

# To print...
def print_header
	puts "\n"
	puts "===========================================".center(150)
	puts "The students of my cohort at Makers Academy".center(150)
	puts "===========================================\n".center(150)
end

def display(students)
	students.select { |student|
		student[:name][0] == "A"
	}.each |Astudent| do
		puts "Names Beginning with 'A'".center(150)
		puts "========================\n".center(150)
		puts Astudent
	end
	students.reject do |student|
		student[:name][0] == "A"
	end.each |notAstudent| do
		puts "Names Not Begining with 'A'".center(150)
		puts "===========================\n".center(150)
		puts notAstudent	
	end
	students.each_with_index do |student, i|
		if student[:name][0] == "A" 
			puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort\n)".center(150)
		end
	end
	students.each_with_index do |student, i|
		if student[:name][0] != "A" 
			puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort\n)".center(150)
		end
	end

end

def print_footer(names)
	puts "Overall, we have #{names.length} great students".center(150)
end

# nothing happens until we call the methods

students = input_students
print_header
display(students)
print_footer(students)

