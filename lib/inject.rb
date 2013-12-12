class Array
  def injection(initial_value = 0)
    value = initial_value == 0 ? self.first : initial_value
    self.shift if initial_value == 0
    self.each do |element|
      value = yield(value, element)
    end
    value
  end
end

