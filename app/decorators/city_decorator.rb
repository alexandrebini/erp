class CityDecorator < ApplicationDecorator
  def with_state
    "#{ object.name } - #{ object.state.abbr }" if object.state
  end
end