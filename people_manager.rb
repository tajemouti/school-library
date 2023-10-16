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
end
