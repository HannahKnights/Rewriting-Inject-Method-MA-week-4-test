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









# memo = self.first
    
#     self.each_with_index do |element, index|
      
#       yield(element)
      
#       return memo if index+1 == self.length
      
#       memo = yield memo, self[index+1]