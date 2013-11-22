
# first we print the names of the students
students =  {:name => "", :age => "", :cohort => :november}
#and then print them

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}"
    puts "age: #{student[:age]}"
    puts "(#{student[:cohort]} cohort)"
    puts ""
  end
end


def input_students
  puts "please enter your name and hit enter"
  puts "then enter your age"
  puts "FOR EXAMPLE \"Tom Groombridge \"\(Enter\)"
  puts "\"19\"\(Enter\)"
  puts "hit return twice to finish"

  students = [] 
  name = gets.chomp
  age = gets.chomp

  while !name.empty? do 
  students << {:name => name, :age => age, :cohort => :Novemeber}
  puts "now we have #{students.length} students" 
  name = gets.chomp
  age = gets.chomp
  end
    students
end

def print_footer (students)
  puts "overall, we have #{students.length} great students"
end

def interactive_menu
  students = []
  loop do 
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
  selection = gets.chomp
  
  case selection
  when "1"
  students = input_students
  when "2"
  print_header
  print(students)
  print_footer(students)
  when "9"
  exit  
  else
  "Sorry I do not understand"
  end
  
end


 
end
 
 interactive_menu
 #students = input_students
 #print_header
 #print(students)
 #print_footer(students)


