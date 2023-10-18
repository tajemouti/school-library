require 'json'

module Serializition
  def serialize_to_json(data, filename)
    File.open(filename, 'w') { |file| file.puts JSON.generate(data) }
  end

  def deserialize_from_json(filename)
    return [] unless File.exist?(filename)

    JSON.parse(File.read(filename))
  end
end
