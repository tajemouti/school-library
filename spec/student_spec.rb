require './student'

describe Student do
  let(:student) { Student.new(18, 'Najlae', parent_permission: true, classroom: 'Biology') }

  it 'should initialize correctly' do
    expect(student.age).to eq(18)
    expect(student.name).to eq('Najlae')
    expect(student.classroom).to eq('Biology')
  end

  it 'should play hooky' do
    expect(student.play_hooky).to eq('¯\(ツ)/¯')
  end

  it 'should display info' do
    expect(student.display_info).to include('[Student]')
    expect(student.display_info).to include('name: Najlae')
    expect(student.display_info).to include('Age: 18')
  end
end
