require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test 'should have a value' do
    refute false, build(:contact, value: nil).valid?
    assert true, build(:contact, value: '123456').valid?
  end

  test 'should have a valid type' do
    refute false, build(:contact, type: nil).valid?
    assert_raises(ArgumentError){ build(:contact, type: 'foo').valid? }
    assert true, build(:contact, type: 'email').valid?
    assert true, build(:contact, type: 'phone').valid?
    assert true, build(:contact, type: 'mobile').valid?
  end
end