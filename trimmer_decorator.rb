require './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    original_name = @nameable.correct_name.strip
    if original_name.length > 10
      original_name.slice(0, 10)
    else
      original_name
    end
  end
end
