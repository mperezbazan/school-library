require_relative './app'

def options(option)
  case option.to_i
  when 1
    list_books
  when 2
  when 3
    ask_person_params
  when 4
    title = ask_param('Title')
    author = ask_param('Author')
  when 5
    puts 'Rental created successfully'
  when 6
    id = ask_param('ID of person')
  else
    puts 'Select an option by number'
  end
  list_options
end

def ask_person_params
  type_person = ask_param('Do you want to create a student (1) or a teacher (2)? [Input the number]')
  age = ask_param('Age')
  name = ask_param('Name')
  option = ask_param('Has parent permission? [Y/N]') if type_person.to_i == 1
  option = ask_param('Specialization') if type_person.to_i == 2
  create_person(type_person, age, name, option)
end

def ask_param (title)
  print "#{title}: "
  gets.chomp
end

def list_options
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
  options(option)
end

def main
  puts 'Welcome to School Library App!'
  list_options
end

main
