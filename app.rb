require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

def list_books
  puts 'HERE ARE THE BOOKS'
end

def list_persons
  puts 'HERE ARE THE PERSONS'
end

def create_person(type, age, name, option)
  permission = option.upcase == 'Y'
  person = Student.new(age, permission, name) if type.to_i == 1
  person = Teacher.new(age, name, option) if type.to_i == 2
  puts 'Person created successfully' if person
end
