require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown')
    super(age, name)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end

math = Classroom.new('Maths')
math.students

tem = Student.new(math, 22, 'Martin')
tem2 = Student.new(math, 15, 'Luis')
p tem
p tem2
p math

