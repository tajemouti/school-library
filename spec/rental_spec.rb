require './rental'
require './book'
require './person'

describe Rental do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new(43, 'Aj') }
  let(:rental) { Rental.new('2023-10-19', book, person) }

  it 'should initialize correctly' do
    expect(rental.date).to eq('2023-10-19')
    expect(rental.book).to eq(book)
    expect(rental.person).to eq(person)
  end
end
