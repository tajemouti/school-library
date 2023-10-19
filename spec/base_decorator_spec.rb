require './base_decorator'

describe BaseDecorator do
  let(:nameable) { double('Nameable', correct_name: 'Mumbere Habert') }
  let(:decorator) { BaseDecorator.new(nameable) }

  it 'should wrap a Nameable object' do
    expect(decorator.nameable).to eq(nameable)
  end

  it 'should correct the name' do
    allow(nameable).to receive(:correct_name).and_return('Ajrass Tajemouti')
    expect(decorator.correct_name).to eq('Ajrass Tajemouti')
  end
end
