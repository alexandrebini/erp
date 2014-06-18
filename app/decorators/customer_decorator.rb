class CustomerDecorator < ThirdPartyDecorator
  decorates :customer
  delegate_all

  def taxpayers
    object.taxpayers.build(type: :rg) if object.taxpayers.rg.blank?
    object.taxpayers.build(type: :cpf) if object.taxpayers.cpf.blank?
    TaxpayerDecorator.decorate_collection object.taxpayers
  end
end