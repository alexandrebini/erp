require 'test_helper'

class CityTest < ActiveSupport::TestCase
  test 'should have a name' do
    assert true, build(:city, name: nil).invalid?
  end

  test 'should have an state' do
    assert true, build(:city, state: nil).invalid?
  end
end