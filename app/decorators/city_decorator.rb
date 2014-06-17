class CityDecorator < Draper::Decorator
  delegate_all

  def with_state
    "#{ object.name } - #{ object.state.abbr }" if object.state
  end
end
