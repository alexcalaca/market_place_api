require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "should have a positive price" do
    product = products(:one)
    product.price = -1
    assert_not product.valid?
  end

  test "should filter products by name" do
    assert_equal 2, Product.filter_by_title('tv').count
  end  
end
