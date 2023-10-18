require './people_manager'
require './books_manager'
require './rentals_manager'

class App
  attr_accessor :people_manager, :books_manager, :rentals_manager

  def initialize
    @people_manager = PeopleManager.new
    @books_manager = BooksManager.new
    @rentals_manager = RentalsManager.new(@books_manager, @people_manager)
  end

  def serialize_to_json(data, filename)
    File.open(filename, 'w') { |file| file.puts JSON.generate(data) }
  end

  def deserialize_from_json(filename)
    return [] unless File.exist?(filename)

    JSON.parse(File.read(filename))
  end
end
