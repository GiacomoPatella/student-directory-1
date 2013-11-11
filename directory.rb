# let's put all the students into an array
students = [
	"Kennerdeigh",
	"Anath",
	"Jean-Baptiste",
	"Erica",
	"Georgi",
	"Nicki",
	"Chris",
	"Kumy",
	"Lara",
	"James",
	"Asta",
	"Hannah",
	"Simon",
	"Gianni",
	"Tom Groombridge",
	"Tom Shacham ",
	"Jeremy",
	"Michael",
	"Bruce",
	"James",
	"Giacomo",
	"Nisar",
	"Peter"
]

# and then print them
puts "The students of my cohort at Makers Academy"
puts "---------------------"
students.each do |student|
	puts student
end

# finally, we print the total
puts "Overall, we have #{students.length} great students"

