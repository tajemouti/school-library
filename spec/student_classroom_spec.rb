require './classroom'
require './student'

describe Classroom do
  let(:classroom) { Classroom.new('Ruby') }
  let(:student) { Student.new(40, 'Ajrass', parent_permission: true) }

  it 'should add a student to a classroom' do
    classroom.add_student(student)
    expect(classroom.students).to include(student)
  end

  it 'should set the classroom for a student' do
    student.classroom = classroom
    expect(classroom.students).to include(student)
  end
end
