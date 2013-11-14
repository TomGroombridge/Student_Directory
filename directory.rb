
# first we print the names of the students
students = [
{:name => "Tom", :cohort => :november},
{:name => "J.B", :cohort => :november},
{:name => "Lara", :cohort => :november}, 
{:name => "James", :cohort => :november},
{:name => "Kennedy", :cohort => :november},
{:name => "Tom", :cohort => :november},
{:name => "Nicki", :cohort => :november},
{:name => "Chris", :cohort => :november},          
{:name => "Kumi", :cohort => :november}, 
           ]
#and then print them

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def input_students
  puts "please enter the name of students"
  puts "hit return twice to finish"

  #create a empty array
  students = []

  #get the first name 
  name = gets.chomp

  #while the name is not empty repeat code
  while !name.empty? do 

  #add the student hash to the array
  students << {:name => name, :cohort => :Novemeber}

  puts "now we have #{students.length} students"

  #get the next name 
  name = gets.chomp
end
    #reuturn the array of students
    students
end


def print_footer (students)
  puts "overall, we have #{students.length} great students"
end
 #nothing happnes until we assign the variables
 
 students = input_students
 print_header
 print(students)
 print_footer(students)
