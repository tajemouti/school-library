module PersonFactory
  def create_person_from_data(person_info)
    data = person_info['data'].transform_keys(&:to_sym)

    if person_info['type'] == 'Student'
      Student.new(
        data[:age], data[:name],
        parent_permission: data[:parent_permission],
        classroom: data[:classroom]
      )
    elsif person_info['type'] == 'Teacher'
      Teacher.new(
        data[:age], data[:name],
        parent_permission: data[:parent_permission],
        specialization: data[:specialization]
      )
    end
  end

  def save_people
    people_data = people_manager.people.map do |person|
      data = {
        id: person.id,
        age: person.age,
        name: person.name,
        parent_permission: person.instance_variable_get('@parent_permission')
      }

      if person.is_a?(Student)
        data[:classroom] = person.instance_variable_get('@classroom')
      elsif person.is_a?(Teacher)
        data[:specialization] = person.instance_variable_get('@specialization')
      end

      {
        type: person.class.to_s,
        data: data
      }
    end

    serialize_to_json(people_data, 'people.json')
  end

  def load_people
    people_data = deserialize_from_json('people.json')
    people_data.each do |person_info|
      person = create_person_from_data(person_info)
      person.instance_variable_set('@id', person_info['data']['id'])
      people_manager.people << person
    end
  end
end
