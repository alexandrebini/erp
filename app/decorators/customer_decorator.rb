class CustomerDecorator < ThirdPartyDecorator
  decorates :customer
  delegate_all
  decorates_association :taxpayers

  def taxpayers
    p object.taxpayers.build(type: :rg) if object.taxpayers.rg.blank?
    p object.taxpayers.build(type: :cpf) if object.taxpayers.cpf.blank?
    TaxpayerDecorator.decorate_collection object.taxpayers
  end
end
