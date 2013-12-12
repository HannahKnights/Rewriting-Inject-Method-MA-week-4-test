class Array
  def injection(initial_value = nil)
    value = initial_value == nil ? self.first : initial_value
    self.shift if initial_value == nil
    self.each do |element|
      value = yield(value, element)
    end
    value
  end
end

