require './person'
describe Person do
  let(:person) { Person.new(31, 'Mumbere Habert') }
  it 'should initialize correctly' do
    expect(person.age).to eq(31)
    expect(person.name).to eq('Mumbere Habert')
  end
end
