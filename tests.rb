require './person'
require './capitalize_decorator'
require './trimmer_decorator'

person = Person.new(22, 'maximilianus')
capitalized_person = CapitalizeDecorator.new(person)
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

puts person.correct_name
puts capitalized_person.correct_name
puts capitalized_trimmed_person.correct_name
