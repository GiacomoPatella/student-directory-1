  @students = [] # an empty array accessible to all methods
def interactive_menu
  loop do
    print_menu 
    process(gets.chomp)
  end
end
  
def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit 
  else
    puts "I don't know what you meant. Please try again."
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  display_student_list
  print_footer
end 


def greeting()
  puts "Please enter the name of the student you'd like to add and push return, ".center(150)
  puts "or hit enter twice to finish".center(150)
end

def get_information(info)
  puts "Please enter " + info
  gets.chomp
end

def input_students
  loop do
    greeting
    name = get_information("name")
    break if name.empty?
    cohort = get_information("cohort")
    break if cohort.empty?
    pastimes = get_information("pastimes")
    break if pastimes.empty?
    @students << { :name => capitalize_all(name), :cohort => capitalize_all(cohort), :hobbies => capitalize_all(pastimes)}
  end
  @students
end

def capitalize_all(string)
  string.split(' ').map{|word| word.capitalize}.join(' ')
end

def print_header
  puts "The students of my cohort at Makers Academy".center(150)
  puts "---------------------".center(150)
end

def display_student_list
  puts "Names beginning with 'A'".center(150) + "\n" + "========================".center(150) if @students.any? {|student| student[:name][0] == 'A'}
  @students.each_with_index do |student, i|
    if student[:name][0] == "A" 
      puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort)".center(150)
    end
  end
  puts "Names not beginning with 'A'".center(150) + "\n" + "========================".center(150) if @students.any? {|student| student[:name][0] != 'A'}
  @students.each_with_index do |student, i|
    if student[:name][0] != "A" 
      puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort)".center(150)
    end
  end
end

def print_footer
  puts "Overall, we have #{@students.length} great students".center(150)
end

# nothing happens until we call the methods
interactive_menu


