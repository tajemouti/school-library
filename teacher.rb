require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name = 'Unknown', parent_permission: true, specialization: 'Unknown')
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def display_info
    "[Teacher] name: #{name}, ID: #{id}, Age: #{age}"
  end
end
