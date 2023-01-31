require_relative './student'
require_relative './book'
require_relative './rental'

puts '***** Decoration Exercise*****'
person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

puts '***** Classroom - Student association *****'
math = Classroom.new('Maths')
puts "Students in classroom Maths: #{math.students.length}"

martin = Student.new(math, 22, 'Martin')
luis = Student.new(math, 15, 'Luis')
puts "Students in classroom Maths: #{math.students.length}"

puts '***** Books - Persons association *****'
book = Book.new('Harry Potter and Philosophers Stone ', 'J K Rowling')
puts "Created book: #{book.title} by #{book.author}"
rent = Rental.new('2023-01-31', martin, book)
puts "Rent at: #{rent.date} Book: #{rent.book.title} Student: #{rent.person.name}"
puts "Number of rentals for Martin: #{martin.rentals.length}"
puts "Number of rentals for Luis: #{luis.rentals.length}"
