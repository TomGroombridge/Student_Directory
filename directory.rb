@students =  []

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end


def print (students)
  students.each do |student|
    puts "#{student[:name]}"
    puts "age: #{student[:age]}"
    puts "(#{student[:cohort]} cohort)"
    puts ""
  end
end

def print_input_students
  puts "please enter your name and hit enter"
  puts "then enter your age"
  puts "FOR EXAMPLE \"Tom Groombridge \"\(Enter\)"
  puts "\"19\"\(Enter\)"
  puts "hit return twice to finish"
end


def input_students
  students = [] 
  name = STDIN.gets.chomp
  age = STDIN.gets.chomp

  while !name.empty? do 
  students << {:name => name, :age => age, :cohort => :Novemeber}
  puts "now we have #{students.length} students" 
  name = STDIN.gets.chomp
  age = STDIN.gets.chomp
  end
  @students = students
end


def print_footer (students)
  puts"overall, we have #{students.length} great students"
end 

def load_students (filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, age, cohort = line.chomp.split(',')
  @students << {:name => name, :age => age, :cohort => cohort.to_sym}  
  end
  file.close
end


def try_load_students
  filename = ARGV.first     #first arguement from the command line
  return if filename.nil?     #get out of the method if it isn't given
  if File.exists?(filename)      #if it exists
     load_students(filename)
     puts "Loaded #{@students.length} from the file #{filename}"
    else         #if it doesnt exist
     puts "sorry #{filename} doesn't exist"
     exit         #quit the program
    end
end    
     


def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:age], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close 
  puts "file saved"
end 

def menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. save file"
  puts "4. load students"
  puts "9. Exit"
end 


def show_students 
 print_header
 print(@students)
 print_footer (@students)
end 


def process
  selection = STDIN.gets.chomp
  case selection
  when "1"
  print_input_students
  input_students
  when "2"
  show_students
  when "3"
  save_students
  when "4"
  load_students  
  when "9"
  exit  
  else
  "Sorry I do not understand"
  end
end


def interactive_menu 
  students = [] 
  loop do 
  menu  
  process
  end
end

try_load_students
interactive_menu
 
