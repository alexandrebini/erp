class AddressDecorator < ApplicationDecorator
  def city
    object.city_attributes = { name: 'Birigui' } if object.city.blank?
    object.build_city if object.city.blank?
    object.city.decorate
  end

  def city_name
    city.with_state
  end
end