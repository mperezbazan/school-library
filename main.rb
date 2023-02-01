require_relative './app'
require_relative './library'

def options(option, library)
  case option.to_i
  when 1
    list_books(library)
  when 2
    list_persons(library)
  when 3
    ask_person_params(library)
  when 4
    title = ask_param('Title')
    author = ask_param('Author')
    create_book(title, author, library)
  when 5
    create_rental(library)
  when 6
    id = ask_param('ID of person')
    list_rentals(id, library)
  else
    puts 'Select an option by number'
  end
  list_options(library)
end

def ask_person_params(library)
  type_person = ask_param('Do you want to create a student (1) or a teacher (2)? [Input the number]')
  age = ask_param('Age')
  name = ask_param('Name')
  option = ask_param('Has parent permission? [Y/N]') if type_person.to_i == 1
  option = ask_param('Specialization') if type_person.to_i == 2
  create_person(type_person, age, name, option, library)
end

def ask_param (title)
  print "#{title}: "
  gets.chomp
end

def list_options(library)
  print "\n\n"
  puts 'Please choose an option by enterin a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rental for a given person id'
  puts '7 - Exit'
  option = gets.chomp
  exit if option.to_i == 7
  options(option, library)
end

def main
  puts 'Welcome to School Library App!'
  library = Library.new('OOP School')
  list_options(library)
end

main
