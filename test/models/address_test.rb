require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test 'should have a city' do
    refute false, build(:address, city: nil).valid?
    assert true, build(:address, city: build(:city)).valid?
  end

  test 'should have a street' do
    refute false, build(:address, street: nil).valid?
    assert true, build(:address, street: 'street').valid?
  end

  test 'should have a number' do
    refute false, build(:address, number: nil).valid?
    assert true, build(:address, number: '1').valid?
  end

  test 'should have a postal code' do
    refute false, build(:address, postal_code: nil).valid?
    assert true, build(:address, postal_code: '16200-000').valid?
  end

  test 'should be able to set the city by name' do
    create :city, name: 'Foo'
    refute false, build(:address, city: nil, city_attributes: { name: 'Bar' }).valid?
    assert true, build(:address, city: nil, city_attributes: { name: 'Foo' }).valid?
  end
end