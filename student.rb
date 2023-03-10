require_relative './person'
require_relative './classroom'

class Student < Person
  def initialize(age, permission, name = 'Unknown')
    super(age, name, parent_permission: permission)
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end
