 class Array

  def injection(product = 0)
    value = product
    self.each do |element|
      yield(value, element)
      value = yield(value, element)
    end
    value
  end

end
