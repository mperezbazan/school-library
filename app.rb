require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './library'

def list_books(library)
  library.books.each {| book | 
    puts "Title: \"#{book.title}\", Author: #{book.author}"
  }
end

def list_persons(library)
  library.persons.each { |person| 
    puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  }
end

def create_person(type, age, name, option, library)
  permission = option.upcase == 'Y'
  person = Student.new(age, permission, name) if type.to_i == 1
  person = Teacher.new(age, name, option) if type.to_i == 2
  library.persons << person
  puts 'Person created successfully' if person
end

def create_book(title, author, library)
  book = Book.new(title, author)
  library.books << book
  puts 'Book created succefully' if book
end

def create_rental(library)
  print "\n"
  puts 'Select a book from the following list by number'
  library.books.each_with_index do |book, index|
    puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
  end
  book_index = gets.chomp
  print "\n"
  puts 'Select a person from the following list by number (not id)'
  library.persons.each_with_index do |person, index|
    puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  person_index = gets.chomp
  date = ask_param('Date')
  rental = Rental.new(date, library.persons[person_index.to_i], library.books[book_index.to_i])
  puts 'Rental created successfully' if rental
end

def list_rentals(id, library)
  person_selected = library.persons.find { |person| person.id == id.to_i }
  puts 'Rentals:'
  person_selected.get_rentals.each do |rental|
    puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
  end
end
