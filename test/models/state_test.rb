require 'test_helper'

class StateTest < ActiveSupport::TestCase
  test 'should have a name' do
    refute false, build(:state, name: nil).valid?
    assert true, build(:state, name: 'name').valid?
  end

  test 'should have an abbr' do
    refute false, build(:state, abbr: nil).valid?
    assert true, build(:state, abbr: 'abbr').valid?
  end
end