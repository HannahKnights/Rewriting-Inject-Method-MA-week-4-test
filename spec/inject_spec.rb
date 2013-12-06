require 'inject'

describe Array do 

  let (:array) {Array.new}

  context "re-writing the inject method" do

    it "must be able to take a block of code" do
      array = [1,2,3]
      expect(array.injection(1){|memo, obj| :block}).not_to raise_error
    end

    it "should be able to take an argument" do
      array = [1,2,3]
      expect(array.injection(1){|memo, obj| :block}).not_to raise_error
    end

    it "should be able to not take an argument" do
      array = [1,2,3]
      expect(array.injection {|memo, obj| :block}).not_to raise_error
    end

    


  end
  
end