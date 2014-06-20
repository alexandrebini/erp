require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'should have a name' do
    refute false, build(:product, name: nil).valid?
    assert true, build(:product, name: 'product').valid?
  end

  test 'should have a barcode' do
    refute false, build(:product, barcode: nil).valid?
    assert true, build(:product, barcode: '123456789').valid?
  end

  test 'should have a price and price should be an integer' do
    refute false, build(:product, price: nil).valid?
    refute false, build(:product, price: -1).valid?
    assert true, build(:product, price: 0).valid?
  end
end