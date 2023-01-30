class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end

j = Person.new(18, 'John')
pp j
j.can_use_services?

m = Person.new(16, 'Martin', parent_permission: false)
pp m
m.can_use_services?

paul = Person.new(16, 'Paul')
pp paul
paul.can_use_services?
