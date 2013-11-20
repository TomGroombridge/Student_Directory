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
  name = gets.chomp
  age = gets.chomp

  while !name.empty? do 
  students << {:name => name, :age => age, :cohort => :Novemeber}
  puts "now we have #{students.length} students" 
  name = gets.chomp
  age = gets.chomp
  end
  @students = students
end


def print_footer (students)
  puts"overall, we have #{students.length} great students"
end 

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
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
  puts "9. Exit"
end 


def show_students 
 print_header
 print(@students)
 print_footer (@students)
end 


def process
  selection = gets.chomp
  case selection
  when "1"
  print_input_students
  input_students
  when "2"
  show_students
  when "3"
  save_students
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

interactive_menu
 
