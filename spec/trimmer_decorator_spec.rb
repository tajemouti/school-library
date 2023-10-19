require './trimmer_decorator'

describe TrimmerDecorator do
  let(:nameable) { double('Nameable', correct_name: 'Aj') }
  let(:decorator) { TrimmerDecorator.new(nameable) }

  it 'should initialize correctly' do
    expect(decorator.nameable).to eq(nameable)
  end

  it 'should trim the name' do
    allow(nameable).to receive(:correct_name).and_return('   Aj  ')
    expect(decorator.correct_name).to eq('Aj')
  end
end
