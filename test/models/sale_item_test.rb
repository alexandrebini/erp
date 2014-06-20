require 'test_helper'

class SaleItemTest < ActiveSupport::TestCase
  test 'should have a product' do
    refute false, build(:sale_item, product: nil).valid?
    assert true, build(:sale_item, product: build(:product)).valid?
  end
end
