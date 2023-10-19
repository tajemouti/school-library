require './book'
describe Book do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { double('Person') }
  let(:date) { '2023-10-19' }
  it 'should initialize correctly' do
    expect(book.title).to eq('Title')
    expect(book.author).to eq('Author')
  end
end