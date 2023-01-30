require_relative './person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(age, name)
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end

s = Student.new('Maths')
pp s
