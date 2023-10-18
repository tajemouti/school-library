module RentalFactory
  def create_rental_from_data(rental_data)
    book = find_book(rental_data['book'])
    person = find_person(rental_data['person'])
    Rental.new(
      rental_data['date'],
      book,
      person
    )
  end

  def save_rentals
    rentals_data = rentals_manager.rentals.map do |rental|
      {
        date: rental.date,
        book: { title: rental.book.title, author: rental.book.author },
        person: {
          id: rental.person.id,
          age: rental.person.age,
          name: rental.person.name,
          parent_permission: rental.person.instance_variable_get('@parent_permission')
        }
      }
    end

    serialize_to_json(rentals_data, 'rentals.json')
  end

  def load_rentals
    return unless File.exist?('rentals.json')

    rentals_data = deserialize_from_json('rentals.json')

    rentals_data.each do |rental_data|
      rentals_manager.rentals << create_rental_from_data(rental_data)
    end
  end

  def find_book(book_data)
    books_manager.books.find { |book| book.title == book_data['title'] && book.author == book_data['author'] }
  end

  def find_person(person_data)
    people_manager.people.find { |person| person.name == person_data['name'] }
  end
end
