require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, name = 'Unknown', parent_permission: true, specialization: 'Unknown')
    super(id, age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new(0o001, 43, 'Abdesselam', specialization: 'Arabic')
teacher2 = Teacher.new(0o001, 27, 'Fineus', specialization: 'Biology')

puts teacher1.name # Abdesselam
puts teacher1.age # 43
puts teacher1.specialization # Arabic
puts teacher1.can_use_services? # true

puts teacher2.name # Fineus
puts teacher2.age # 27
puts teacher2.specialization # Biology
puts teacher2.can_use_services? # true
