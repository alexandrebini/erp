class ThirdPartyDecorator < Draper::Decorator
  delegate_all

  def address
    object.build_address if object.address.blank?
    object.address.decorate
  end
end
