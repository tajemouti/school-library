require './person'
require './book'
require './rental'

describe Person do
  let(:person) { Person.new(31, 'Mumbere Habert') }

  it 'should initialize correctly' do
    expect(person.age).to eq(31)
    expect(person.name).to eq('Mumbere Habert')
  end

  it 'should correctly check age' do
    expect(person.send(:of_age?)).to be true
    person = Person.new(15, 'Adham Tajemouti')
    expect(person.send(:of_age?)).to be false
  end

  it 'should add a rental' do
    book = Book.new('Book', 'Author')
    rental = person.add_rental(book, '2023-10-12')
    expect(rental).to be_an_instance_of(Rental)
    expect(rental.book).to eq(book)
    expect(rental.person).to eq(person)
    expect(person.rentals).to include(rental)
  end

  it 'should return correct name' do
    expect(person.correct_name).to eq('Mumbere Habert')
  end

  it 'should correctly check permission' do
    person_with_permission = Person.new(18, 'Najae Tajemouti', parent_permission: true)
    expect(person_with_permission.can_use_services?).to be true

    person_without_permission = Person.new(15, 'Adham Tajemouti', parent_permission: false)
    expect(person_without_permission.can_use_services?).to be false
  end
end
