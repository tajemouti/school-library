require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unknown', parent_permission: true, classroom: 'Unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

student1 = Student.new(15, 'Adham', parent_permission: false, classroom: 'Computer science')
student2 = Student.new(17, 'Najlae', classroom: 'Applied physics')

puts student1.name # Adham
puts student1.classroom # Computer science
puts student1.can_use_services? # false

puts student2.age # 17
puts student2.classroom # Applied physics
puts student2.can_use_services? # true
