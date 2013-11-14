#!/usr/bin/env ruby
# Student names & cohort data hashes
def input_students
	# create an empty array
	students = []
	# get the first name
	loop do
		puts "Please enter the name of the student you'd like to add and push return, ".center(150)
		puts "or hit enter twice to finish".center(150)
		name = gets.chomp
		break if name.empty?
		puts "Please enter the cohort month of the student"
		# get the cohort
		cohort = gets.chomp
		# while the cohort is not empty, repeat this code
		# get hobbies
		break if cohort.empty?
		puts "Please enter your favourite pastimes"
		#get the hobies from the user
		hobbies = gets.chomp
		break if hobbies.empty?
		# while the cohort is not empty, repeat this code
		#add the student hash to the array
		students << { :name => capitalize_all(name), :cohort => cohort.capitalize, :hobbies => hobbies}
	end
	#return the array of students
	students
end

def capitalize_all(string)
	string.split(' ').map{|word| word.capitalize}.join(' ')
end

# To print...
def print_header
	puts "The students of my cohort at Makers Academy".center(150)
	puts "---------------------".center(150)
end

def display(students)
	puts "Names beginning with 'A'".center(150) + "\n" + "========================".center(150) if students.any? {|student| student[:name][0] == 'A'}
	students.each_with_index do |student, i|
		if student[:name][0] == "A" 
			puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort\n)".center(150)
		end
	end
	puts "Names not beginning with 'A'".center(150) + "\n" + "========================".center(150) if students.any? {|student| student[:name][0] != 'A'}
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

