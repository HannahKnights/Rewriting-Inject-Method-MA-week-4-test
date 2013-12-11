 class Array

  # pay attention to the variable names
  # it doesn't have to be a product. It can be a sum, anything
  def injection(product = 0)
    # this should only happen if the product is given to you
    # this is why the test I wrote fails: you assume the value
    # is 0 to begin with and then the overall product becomes 0
    value = product
    # the overall structure here is correct
    # however, the number of iterations must be different:
    # if the argument is given, you'll have self.length iterations
    # if it's not, you'll have self.length-1 iterations because
    # the first element will be taken as the initial value
    self.each do |element|
      # why call the block twice? It should be called exactly once
      # per iteration
      yield(value, element)
      value = yield(value, element)
    end
    value
  end

end
