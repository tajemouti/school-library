require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end

person1 = Person.new(15, 'Adham', parent_permission: false)
person2 = Person.new(17, 'Najlae')
person3 = Person.new(40)

puts person1.can_use_services? # false
puts person2.can_use_services? # true
puts person3.can_use_services? # true

puts person1.correct_name # Adham
puts person2.correct_name # Najlae
puts person3.correct_name # Unknown
