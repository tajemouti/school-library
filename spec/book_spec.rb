require './book'
require './person'
require './rental'

describe Book do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new(43, 'Aj', parent_permission: true) }
  let(:rental) { Rental.new('2023-10-12', book, person) }

  it 'should initialize correctly' do
    expect(book.title).to eq('Title')
    expect(book.author).to eq('Author')
  end

  it 'should add a rental' do
    book.add_rental(person, '2023-10-12')
    expect(book.rentals).to include(rental)
    expect(person.rentals).to include(rental)
  end
end
