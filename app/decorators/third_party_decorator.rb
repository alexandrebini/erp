class ThirdPartyDecorator < ApplicationDecorator
  def address
    object.build_address if object.address.blank?
    object.address.decorate
  end

  def contacts
    object.contacts.build(type: :email) if object.contacts.email.blank?
    object.contacts.build(type: :phone) if object.contacts.phone.blank?
    object.contacts.build(type: :mobile) if object.contacts.mobile.blank?
    ContactDecorator.decorate_collection object.contacts
  end
end