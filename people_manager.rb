require './student'
require './teacher'

class PeopleManager
  attr_accessor :people

  def initialize
    @people = []
  end

  def list_people
    @people.each do |person|
      puts person.display_info
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp.to_i

    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    if person_type == 2
      print 'Specialization: '
      specialization = gets.chomp
      @people << Teacher.new(age, name, parent_permission: true, specialization: specialization)
    else
      print 'Has parent permission? [Y/N]: '
      parent_permission = gets.chomp.downcase == 'y'
      @people << Student.new(age, name, parent_permission: parent_permission)
    end
    puts 'Person created successfully'
  end
end
