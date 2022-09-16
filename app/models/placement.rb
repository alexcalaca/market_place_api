class Placement < ApplicationRecord

  belongs_to :order
  belongs_to :product, inverse_of: :placements  

  def decrement_product_quantity!
    product.decrement!(:quantity, quantity)
  end
end
