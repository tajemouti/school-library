require './capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable', correct_name: 'Aj') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  it 'should initialize correctly' do
    expect(decorator.nameable).to eq(nameable)
  end

  it 'should capitalize the name' do
    expect(decorator.correct_name).to eq('Aj')
  end
end
