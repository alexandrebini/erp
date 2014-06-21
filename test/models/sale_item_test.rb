require 'test_helper'

class SaleItemTest < ActiveSupport::TestCase
  test 'should have a product' do
    refute false, build(:sale_item, product: nil).valid?
    assert true, build(:sale_item, product: build(:product)).valid?
  end

  test 'should have a sale' do
    refute false, build(:sale_item, sale: nil).valid?
    assert true, build(:sale_item, sale: build(:sale, sale_items_count: 0)).valid?
  end

  test 'should have a price and price should be an integer' do
    refute false, build(:sale_item, price: nil).valid?
    refute false, build(:sale_item, price: -1).valid?
    assert true, build(:sale_item, price: 0).valid?
  end

  test 'should have a price and price should be an integer greater then or equal to 1' do
    refute false, build(:sale_item, price: nil).valid?
    refute false, build(:sale_item, price: -1).valid?
    refute false, build(:sale_item, price: 0).valid?
    assert true, build(:sale_item, price: 1).valid?
  end

  test 'discount should be an integer' do
    refute false, build(:sale_item, discount: nil).valid?
    refute false, build(:sale_item, discount: -1).valid?
    assert true, build(:sale_item, discount: 0).valid?
    assert true, build(:sale_item, discount: nil).valid?
    assert true, build(:sale_item, discount: 1).valid?
  end

  test 'should update price before validation' do
    sale_item = build(:sale_item, price: 100, product: build(:product, price: 200))
    sale_item.valid?
    refute_equal 100, sale_item.price
    assert_equal 200, sale_item.price
  end

  test 'should update total before validation' do
    sale_item = build(:sale_item, total: 100, quantity: 2, product: build(:product, price: 200))
    sale_item.valid?
    refute_equal 100, sale_item.total
    refute_equal 200, sale_item.total
    assert_equal 400, sale_item.total
  end
end