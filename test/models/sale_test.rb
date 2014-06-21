require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  test 'should have a customer' do
    refute false, build(:sale, customer: nil).valid?
    assert true, build(:sale, customer: build(:customer)).valid?
  end

  test 'should have a vendor' do
    refute false, build(:sale, vendor: nil).valid?
    assert true, build(:sale, vendor: build(:vendor)).valid?
  end

  test 'should have sale items' do
    refute false, build(:sale, sale_items_count: 0).valid?
    assert true, build(:sale, sale_items_count: 1).valid?
  end

  test 'should update total before validation' do
    product = build(:product, price: 200)
    sale = build(:sale, total: 100, sale_items_count: 0)
    sale.sale_items = build_list(:sale_item, 2, sale: sale, product: product, quantity: 1)
    sale.valid?
    refute_equal 100, sale.total
    refute_equal 200, sale.total
    assert_equal 400, sale.total
  end
end