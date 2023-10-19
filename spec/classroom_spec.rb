require './classroom'
require './student'

describe Classroom do
  let(:classroom) { Classroom.new('Biology') }
  let(:student) { Student.new(18, 'Najlae', parent_permission: true) }

  it 'should initialize correctly' do
    expect(classroom.label).to eq('Biology')
    expect(classroom.students).to be_empty
  end

  it 'should add a student' do
    classroom.add_student(student)
    expect(classroom.students).to include(student)
    expect(student.classroom).to eq(classroom)
  end
end
