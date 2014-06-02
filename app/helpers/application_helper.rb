module ApplicationHelper

  def to_percentage(float_value)
    "#{float_value.to_i}%"
  rescue
    "0%"
  end

end
