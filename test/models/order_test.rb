require "test_helper"

class OrderTest < ActiveSupport::TestCase  
    setup do
      @order = orders(:one)
      @product1 = products(:one)
      @product2 = products(:two)
    end
end
