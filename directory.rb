
# first we print the names of the students
students = [
"Tom",
"J.B",
"Lara", 
"James",
"Kennedy",
"Tom",
"Nicki"
]
#and then print them
puts "The students of my cohort at Makers Academy"
puts "--------------"
students.each do |student|
puts student
end
#then we print the total
puts "overall, we have #{students.length} great students"
