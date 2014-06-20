require 'test_helper'

class ThirdPartiesTest < ActiveSupport::TestCase
  test 'should have a name' do
    refute false, build(:third_party, name: nil).valid?
    assert true, build(:third_party, name: 'third_party').valid?
  end
end
