class CitiesController < ApplicationController
  def index
    @cities = City.includes(:state)
    render json: @cities
  end
end