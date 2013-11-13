
# first we print the names of the students
students = [
["Tom", :november],
["J.B", :november],
["Lara", :november], 
["James", :november],
["Kennedy", :november],
["Tom", :november],
["Nicki", :november],
]
#and then print them

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print (students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer (students)
  puts "overall, we have #{students.length} great students"
end
 #nothing happnes until we assign the variables
 
 print_header
 print (students)
 
 print_footer (students)