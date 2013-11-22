

@students = [] # an empty array accessible to all methods

def try_load_students
  load_students
end


def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  puts "SAVED: #{@students}"
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:hobbies]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  #open the file for reading
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort, pastimes = line.chomp.split(",")
    @students << {:name => name, :cohort => cohort, :hobbies => pastimes}
  end
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.length} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def interactive_menu
  try_load_students
  loop do
    print_menu 
    process(gets.chomp)
  end
end
  
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end
 
def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students("students.csv")
  when "9"
    exit 
  else
    puts "I don't know what you meant. Please try again."
  end
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

def show_students
  print_header
  display_student_list
  print_footer
end 

def greeting()
  puts "Please enter the name of the student you'd like to add and push return, ".center(150)
  puts "or hit enter twice to finish".center(150)
end

def get_information(studentinfo)
  puts "Please enter " + studentinfo
  STDIN.gets.chomp
end

def print_header
  puts "The students of my cohort at Makers Academy".center(150)
  puts "---------------------".center(150)
end

def display_student_list
  puts "Names beginning with 'A'".center(150) + "\n" + "========================".center(150) if @students.any? {|student| student[:name][0] == 'A'}
  @students.each_with_index do |student, i|
    if student[:name][0] == "A" 
      puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort. Enjoys #{student[:hobbies]})".center(150)
    end
  end
  puts "Names not beginning with 'A'".center(150) + "\n" + "========================".center(150) if @students.any? {|student| student[:name][0] != 'A'}
  @students.each_with_index do |student, i|
    if student[:name][0] != "A" 
      puts "#{i+1}: #{student[:name]} (#{student[:cohort]} Cohort. Enjoys #{student[:hobbies]})".center(150)
    end
  end
end

def print_footer
  puts "Overall, we have #{@students.length} great students".center(150)
end

def capitalize_all(string)
  string.split(' ').map{|word| word.capitalize}.join(' ')
end





# nothing happens until we call the methods
interactive_menu
load_students(filename)
try_load_students


