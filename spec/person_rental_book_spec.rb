require './person'
require './book'
require './rental'

describe Rental do
  let(:person) { Person.new(25, 'John', parent_permission: true) }
  let(:book) { Book.new('Sample Book', 'Sample Author') }
  let(:rental) { Rental.new('2023-10-12', book, person) }

  it 'should associate a rental with a person and a book' do
    expect(person.rentals).to include(rental)
    expect(book.rentals).to include(rental)
  end
end
