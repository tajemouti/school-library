require './teacher'

describe Teacher do
  let(:teacher) { Teacher.new(43, 'Aj', parent_permission: true, specialization: 'Math') }

  it 'should initialize correctly' do
    expect(teacher.age).to eq(43)
    expect(teacher.name).to eq('Aj')
    expect(teacher.specialization).to eq('Math')
  end

  it 'should always have permission' do
    expect(teacher.can_use_services?).to be true
  end

  it 'should display info' do
    expect(teacher.display_info).to include('[Teacher]')
    expect(teacher.display_info).to include('name: Aj')
    expect(teacher.display_info).to include('Age: 43')
  end
end
