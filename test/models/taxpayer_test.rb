require 'test_helper'

class TaxpayerTest < ActiveSupport::TestCase
  test 'should have a value' do
    refute false, build(:taxpayer, value: nil).valid?
    assert true, build(:taxpayer, value: '123456').valid?
  end

  test 'should have a valid type' do
    refute false, build(:taxpayer, type: nil).valid?
    assert_raises(ArgumentError){ build(:taxpayer, type: 'foo').valid? }
    assert true, build(:taxpayer, type: 'cpf').valid?
    assert true, build(:taxpayer, type: 'rg').valid?
    assert true, build(:taxpayer, type: 'cnpj').valid?
    assert true, build(:taxpayer, type: 'ie').valid?
  end
end