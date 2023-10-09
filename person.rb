class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
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
end

person1 = Person.new(0o001, 15, 'Adham', parent_permission: false)
person2 = Person.new(0o002, 17, 'Najlae')
person3 = Person.new(0o003, 40)

puts person1.can_use_services? # false
puts person2.can_use_services? # true
puts person3.can_use_services? # true
