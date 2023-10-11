require './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.slice(0, 10)
  end
end
