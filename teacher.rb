require_relative './person'

class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
    super(age, name)
  end

  def can_use_services?
    true
  end
end

t = Teacher.new('Math')
pp t
