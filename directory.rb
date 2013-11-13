
# first we print the names of the students
students = [
{:name => "Tom", :cohort => :november},
{:name => "J.B", :cohort => :november},
{:name => "Lara", :cohort => :november}, 
{:name => "James", :cohort => :november},
{:name => "Kennedy", :cohort => :november},
{:name => "Tom", :cohort => :november},
{:name => "Nicki", :cohort => :november},
           ]
#and then print them

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print (students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer (students)
  puts "overall, we have #{students.length} great students"
end
 #nothing happnes until we assign the variables
 
 print_header
 print (students)
 print_footer (students)