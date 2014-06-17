class CitiesController < ApplicationController
  decorates_assigned :cities

  def index
    @cities = City.includes(:state)
  end
end